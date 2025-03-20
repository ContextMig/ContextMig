.class public Lcom/getkeepsafe/relinker/elf/Program64Header;
.super Lcom/getkeepsafe/relinker/elf/Elf$ProgramHeader;
.source "Program64Header.java"


# direct methods
.method public constructor <init>(Lcom/getkeepsafe/relinker/elf/ElfParser;Lcom/getkeepsafe/relinker/elf/Elf$Header;J)V
    .locals 9
    .param p1, "parser"    # Lcom/getkeepsafe/relinker/elf/ElfParser;
    .param p2, "header"    # Lcom/getkeepsafe/relinker/elf/Elf$Header;
    .param p3, "index"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/getkeepsafe/relinker/elf/Elf$ProgramHeader;-><init>()V

    .line 25
    const/16 v3, 0x8

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 26
    .local v2, "buffer":Ljava/nio/ByteBuffer;
    iget-boolean v3, p2, Lcom/getkeepsafe/relinker/elf/Elf$Header;->bigEndian:Z

    if-eqz v3, :cond_0

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    :goto_0
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 28
    iget-wide v4, p2, Lcom/getkeepsafe/relinker/elf/Elf$Header;->phoff:J

    iget v3, p2, Lcom/getkeepsafe/relinker/elf/Elf$Header;->phentsize:I

    int-to-long v6, v3

    mul-long/2addr v6, p3

    add-long v0, v4, v6

    .line 29
    .local v0, "baseOffset":J
    invoke-virtual {p1, v2, v0, v1}, Lcom/getkeepsafe/relinker/elf/ElfParser;->readWord(Ljava/nio/ByteBuffer;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/getkeepsafe/relinker/elf/Program64Header;->type:J

    .line 30
    const-wide/16 v4, 0x8

    add-long/2addr v4, v0

    invoke-virtual {p1, v2, v4, v5}, Lcom/getkeepsafe/relinker/elf/ElfParser;->readLong(Ljava/nio/ByteBuffer;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/getkeepsafe/relinker/elf/Program64Header;->offset:J

    .line 31
    const-wide/16 v4, 0x10

    add-long/2addr v4, v0

    invoke-virtual {p1, v2, v4, v5}, Lcom/getkeepsafe/relinker/elf/ElfParser;->readLong(Ljava/nio/ByteBuffer;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/getkeepsafe/relinker/elf/Program64Header;->vaddr:J

    .line 32
    const-wide/16 v4, 0x28

    add-long/2addr v4, v0

    invoke-virtual {p1, v2, v4, v5}, Lcom/getkeepsafe/relinker/elf/ElfParser;->readLong(Ljava/nio/ByteBuffer;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/getkeepsafe/relinker/elf/Program64Header;->memsz:J

    .line 33
    return-void

    .line 26
    .end local v0    # "baseOffset":J
    :cond_0
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_0
.end method
