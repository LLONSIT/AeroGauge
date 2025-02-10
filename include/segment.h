#ifndef SEGMENT_H
#define SEGMENT_H
extern u8 Unk_bin_ROM_START[];
extern char SeqSegment_ROM_START[], SegmentTblEnd_ROM_START[];
extern char BankSegment_ROM_START[], SegmentTblStart_ROM_START[];

void dma_copy(char* src, void *dest, const int len);
#endif /* SEGMENT_H */
