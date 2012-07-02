#include <CaLibTrace++.H>
#include <Cam8Lib++.H>
#include <Cam8Instr++.H>

#include <Cam8Steplist++.H>

#include <cstdarg>



Cam8Steplist::Cam8Steplist(void)
{
	Bzero();
}


Cam8Steplist::~Cam8Steplist(void)
{
}






void Cam8Steplist::link(CAM8INSTR c8i)
{
	TENTER("Cam8Steplist::link");

	if (head == NULL) {
		head = c8i;
		tail = c8i;
		c8i->NextPtr((CAM8INSTR) NULL);
	}
	else {
		tail->NextPtr(c8i);
		tail = c8i;
	}

	TLEAVE();
}



void Cam8Steplist::print(CaLibStream & stm)
{
	register int i, j;
	u_int32_t fldcnt, regnum, bitlen;
	bool im, rd, hw, cw, si, hj, by, rs;
	u_int32_t vals[16];
	CAM8INSTR c8i;

	TENTER("Cam8Steplist::print");


	for (c8i = begin(); c8i != (CAM8INSTR) NULL; c8i = next()) {

		rd = c8i->ReadMode();
		si = c8i->HostAlert();;
		hw = c8i->HostWait();
		hj = c8i->HostJump();
		by = c8i->ByteMode();
		im = c8i->ImmedMode();
		cw = c8i->CamWait();
		rs = c8i->CamReset();

		regnum = c8i->Opcode();
		bitlen = c8i->XferLength();
		fldcnt = Register_Specs.FLDCNT(regnum);

		/* Check if it is a NOOP or CAM reset*/
		if (rd && im) {
			if (rs)
				fprintf(stm.file, "CAM RESET\n\n");
			else
				fprintf(stm.file, "NOOP %d clocks\n\n", bitlen);
			continue;
		}

		fprintf(stm.file, "Register %s:  ", Register_Specs.SYM(regnum));

		/* Print flags */
		if (rd)
			fprintf(stm.file, "READ  ");
		if (by)
			fprintf(stm.file, "BYTE  ");
		if (si)
			fprintf(stm.file, "SOFT INTERRUPT  ");
		if (hw)
			fprintf(stm.file, "HOST WAIT  ");
		if (hj)
			fprintf(stm.file, "HOST JUMP  ");
		if (im)
			fprintf(stm.file, "IMMEDIATE  ");
		if (cw)
			fprintf(stm.file, "CAM WAIT  ");

		fprintf(stm.file, "\n");

		if (fldcnt != 0) {
			for(i = 1; i <= fldcnt; i++) {
				UnpackAllPlanes((u_int16_t *) c8i->AdrData(), i * 32 + regnum, im, vals);

				fprintf(stm.file, "%s: ", Register_Specs.SYM(i * 32 + regnum));

				for(j = 0; j < 16; j++)
					fprintf(stm.file, "%x ", vals[j]);

				fprintf(stm.file, "\n");
			}
			fprintf(stm.file, "\n\n");
		}

		else if (Register_Specs.BITLEN(regnum)) {
			UnpackAllPlanes((u_int16_t *) c8i->AdrData(), regnum, im, vals);

			for(j = 0; j < 16; j++)
				fprintf(stm.file, "%x ", vals[j]);

			fprintf(stm.file, "\n\n");
		}

		else {
			fprintf(stm.file, "0x%x ", c8i->AdrData());
			fprintf(stm.file, "\n\n");
		}
	}

	fprintf(stm.file, "\n");

	TLEAVE();
}
