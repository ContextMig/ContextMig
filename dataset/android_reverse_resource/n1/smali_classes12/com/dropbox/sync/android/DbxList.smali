.class public Lcom/dropbox/sync/android/DbxList;
.super Ljava/lang/Object;
.source "DbxList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/sync/android/DbxList$MemListOps;,
        Lcom/dropbox/sync/android/DbxList$ListOps;
    }
.end annotation


# static fields
.field public static BASE_ITEM_SIZE:J


# instance fields
.field private final mOps:Lcom/dropbox/sync/android/DbxList$ListOps;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    const-wide/16 v0, 0x14

    sput-wide v0, Lcom/dropbox/sync/android/DbxList;->BASE_ITEM_SIZE:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lcom/dropbox/sync/android/DbxList$MemListOps;

    invoke-direct {v0}, Lcom/dropbox/sync/android/DbxList$MemListOps;-><init>()V

    invoke-direct {p0, v0}, Lcom/dropbox/sync/android/DbxList;-><init>(Lcom/dropbox/sync/android/DbxList$ListOps;)V

    .line 58
    return-void
.end method

.method constructor <init>(Lcom/dropbox/sync/android/DbxList$ListOps;)V
    .locals 2
    .param p1, "ops"    # Lcom/dropbox/sync/android/DbxList$ListOps;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "ListOps"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    iput-object p1, p0, Lcom/dropbox/sync/android/DbxList;->mOps:Lcom/dropbox/sync/android/DbxList$ListOps;

    .line 49
    return-void
.end method

.method public constructor <init>(Lcom/dropbox/sync/android/DbxList;)V
    .locals 2
    .param p1, "list"    # Lcom/dropbox/sync/android/DbxList;

    .prologue
    .line 67
    new-instance v0, Lcom/dropbox/sync/android/DbxList$MemListOps;

    invoke-virtual {p1}, Lcom/dropbox/sync/android/DbxList;->toList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dropbox/sync/android/DbxList$MemListOps;-><init>(Ljava/util/List;)V

    invoke-direct {p0, v0}, Lcom/dropbox/sync/android/DbxList;-><init>(Lcom/dropbox/sync/android/DbxList$ListOps;)V

    .line 68
    return-void
.end method

.method static checkIndex(IIZ)I
    .locals 4
    .param p0, "index"    # I
    .param p1, "size"    # I
    .param p2, "allow_past_end"    # Z

    .prologue
    .line 587
    if-eqz p2, :cond_1

    move v0, p1

    .line 588
    .local v0, "maxIndex":I
    :goto_0
    if-ltz p0, :cond_0

    if-le p0, v0, :cond_2

    .line 589
    :cond_0
    new-instance v1, Lcom/dropbox/sync/android/DbxRuntimeException$BadIndex;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is out of bounds of list of size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/dropbox/sync/android/DbxRuntimeException$BadIndex;-><init>(Ljava/lang/String;)V

    throw v1

    .line 587
    .end local v0    # "maxIndex":I
    :cond_1
    add-int/lit8 v0, p1, -0x1

    goto :goto_0

    .line 592
    .restart local v0    # "maxIndex":I
    :cond_2
    return p0
.end method


# virtual methods
.method public add(D)Lcom/dropbox/sync/android/DbxList;
    .locals 3
    .param p1, "elem"    # D

    .prologue
    .line 206
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxList;->mOps:Lcom/dropbox/sync/android/DbxList$ListOps;

    invoke-static {p1, p2}, Lcom/dropbox/sync/android/DbxAtom;->create(D)Lcom/dropbox/sync/android/DbxAtom;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/dropbox/sync/android/DbxList$ListOps;->listAppend(Lcom/dropbox/sync/android/DbxAtom;)V

    .line 207
    return-object p0
.end method

.method public add(ID)Lcom/dropbox/sync/android/DbxList;
    .locals 2
    .param p1, "index"    # I
    .param p2, "elem"    # D

    .prologue
    .line 298
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxList;->mOps:Lcom/dropbox/sync/android/DbxList$ListOps;

    invoke-static {p2, p3}, Lcom/dropbox/sync/android/DbxAtom;->create(D)Lcom/dropbox/sync/android/DbxAtom;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/dropbox/sync/android/DbxList$ListOps;->listInsert(ILcom/dropbox/sync/android/DbxAtom;)V

    .line 299
    return-object p0
.end method

.method public add(IJ)Lcom/dropbox/sync/android/DbxList;
    .locals 2
    .param p1, "index"    # I
    .param p2, "elem"    # J

    .prologue
    .line 285
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxList;->mOps:Lcom/dropbox/sync/android/DbxList$ListOps;

    invoke-static {p2, p3}, Lcom/dropbox/sync/android/DbxAtom;->create(J)Lcom/dropbox/sync/android/DbxAtom;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/dropbox/sync/android/DbxList$ListOps;->listInsert(ILcom/dropbox/sync/android/DbxAtom;)V

    .line 286
    return-object p0
.end method

.method public add(ILjava/lang/String;)Lcom/dropbox/sync/android/DbxList;
    .locals 2
    .param p1, "index"    # I
    .param p2, "elem"    # Ljava/lang/String;

    .prologue
    .line 311
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxList;->mOps:Lcom/dropbox/sync/android/DbxList$ListOps;

    invoke-static {p2}, Lcom/dropbox/sync/android/DbxAtom;->create(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxAtom;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/dropbox/sync/android/DbxList$ListOps;->listInsert(ILcom/dropbox/sync/android/DbxAtom;)V

    .line 312
    return-object p0
.end method

.method public add(ILjava/util/Date;)Lcom/dropbox/sync/android/DbxList;
    .locals 2
    .param p1, "index"    # I
    .param p2, "elem"    # Ljava/util/Date;

    .prologue
    .line 337
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxList;->mOps:Lcom/dropbox/sync/android/DbxList$ListOps;

    invoke-static {p2}, Lcom/dropbox/sync/android/DbxAtom;->create(Ljava/util/Date;)Lcom/dropbox/sync/android/DbxAtom;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/dropbox/sync/android/DbxList$ListOps;->listInsert(ILcom/dropbox/sync/android/DbxAtom;)V

    .line 338
    return-object p0
.end method

.method public add(IZ)Lcom/dropbox/sync/android/DbxList;
    .locals 2
    .param p1, "index"    # I
    .param p2, "elem"    # Z

    .prologue
    .line 272
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxList;->mOps:Lcom/dropbox/sync/android/DbxList$ListOps;

    invoke-static {p2}, Lcom/dropbox/sync/android/DbxAtom;->create(Z)Lcom/dropbox/sync/android/DbxAtom;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/dropbox/sync/android/DbxList$ListOps;->listInsert(ILcom/dropbox/sync/android/DbxAtom;)V

    .line 273
    return-object p0
.end method

.method public add(I[B)Lcom/dropbox/sync/android/DbxList;
    .locals 2
    .param p1, "index"    # I
    .param p2, "elem"    # [B

    .prologue
    .line 324
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxList;->mOps:Lcom/dropbox/sync/android/DbxList$ListOps;

    invoke-static {p2}, Lcom/dropbox/sync/android/DbxAtom;->create([B)Lcom/dropbox/sync/android/DbxAtom;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/dropbox/sync/android/DbxList$ListOps;->listInsert(ILcom/dropbox/sync/android/DbxAtom;)V

    .line 325
    return-object p0
.end method

.method public add(J)Lcom/dropbox/sync/android/DbxList;
    .locals 3
    .param p1, "elem"    # J

    .prologue
    .line 193
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxList;->mOps:Lcom/dropbox/sync/android/DbxList$ListOps;

    invoke-static {p1, p2}, Lcom/dropbox/sync/android/DbxAtom;->create(J)Lcom/dropbox/sync/android/DbxAtom;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/dropbox/sync/android/DbxList$ListOps;->listAppend(Lcom/dropbox/sync/android/DbxAtom;)V

    .line 194
    return-object p0
.end method

.method public add(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxList;
    .locals 2
    .param p1, "elem"    # Ljava/lang/String;

    .prologue
    .line 219
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxList;->mOps:Lcom/dropbox/sync/android/DbxList$ListOps;

    invoke-static {p1}, Lcom/dropbox/sync/android/DbxAtom;->create(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxAtom;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/dropbox/sync/android/DbxList$ListOps;->listAppend(Lcom/dropbox/sync/android/DbxAtom;)V

    .line 220
    return-object p0
.end method

.method public add(Ljava/util/Date;)Lcom/dropbox/sync/android/DbxList;
    .locals 2
    .param p1, "elem"    # Ljava/util/Date;

    .prologue
    .line 245
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxList;->mOps:Lcom/dropbox/sync/android/DbxList$ListOps;

    invoke-static {p1}, Lcom/dropbox/sync/android/DbxAtom;->create(Ljava/util/Date;)Lcom/dropbox/sync/android/DbxAtom;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/dropbox/sync/android/DbxList$ListOps;->listAppend(Lcom/dropbox/sync/android/DbxAtom;)V

    .line 246
    return-object p0
.end method

.method public add(Z)Lcom/dropbox/sync/android/DbxList;
    .locals 2
    .param p1, "elem"    # Z

    .prologue
    .line 180
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxList;->mOps:Lcom/dropbox/sync/android/DbxList$ListOps;

    invoke-static {p1}, Lcom/dropbox/sync/android/DbxAtom;->create(Z)Lcom/dropbox/sync/android/DbxAtom;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/dropbox/sync/android/DbxList$ListOps;->listAppend(Lcom/dropbox/sync/android/DbxAtom;)V

    .line 181
    return-object p0
.end method

.method public add([B)Lcom/dropbox/sync/android/DbxList;
    .locals 2
    .param p1, "elem"    # [B

    .prologue
    .line 232
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxList;->mOps:Lcom/dropbox/sync/android/DbxList$ListOps;

    invoke-static {p1}, Lcom/dropbox/sync/android/DbxAtom;->create([B)Lcom/dropbox/sync/android/DbxAtom;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/dropbox/sync/android/DbxList$ListOps;->listAppend(Lcom/dropbox/sync/android/DbxAtom;)V

    .line 233
    return-object p0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxList;->mOps:Lcom/dropbox/sync/android/DbxList$ListOps;

    invoke-interface {v0}, Lcom/dropbox/sync/android/DbxList$ListOps;->listClear()V

    .line 104
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 481
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 482
    :cond_0
    if-ne p1, p0, :cond_1

    const/4 v0, 0x1

    .line 484
    .end local p1    # "o":Ljava/lang/Object;
    :goto_0
    return v0

    .line 483
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, Lcom/dropbox/sync/android/DbxList;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    .line 484
    :cond_2
    invoke-virtual {p0}, Lcom/dropbox/sync/android/DbxList;->toList()Ljava/util/List;

    move-result-object v0

    check-cast p1, Lcom/dropbox/sync/android/DbxList;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/dropbox/sync/android/DbxList;->toList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getBoolean(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 118
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxList;->mOps:Lcom/dropbox/sync/android/DbxList$ListOps;

    invoke-interface {v0, p1}, Lcom/dropbox/sync/android/DbxList$ListOps;->listGet(I)Lcom/dropbox/sync/android/DbxAtom;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/sync/android/DbxAtom;->asBoolean()Z

    move-result v0

    return v0
.end method

.method public getBytes(I)[B
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 153
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxList;->mOps:Lcom/dropbox/sync/android/DbxList$ListOps;

    invoke-interface {v0, p1}, Lcom/dropbox/sync/android/DbxList$ListOps;->listGet(I)Lcom/dropbox/sync/android/DbxAtom;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/sync/android/DbxAtom;->asBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public getDate(I)Ljava/util/Date;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 161
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxList;->mOps:Lcom/dropbox/sync/android/DbxList$ListOps;

    invoke-interface {v0, p1}, Lcom/dropbox/sync/android/DbxList$ListOps;->listGet(I)Lcom/dropbox/sync/android/DbxAtom;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/sync/android/DbxAtom;->asDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getDouble(I)D
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 137
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxList;->mOps:Lcom/dropbox/sync/android/DbxList$ListOps;

    invoke-interface {v0, p1}, Lcom/dropbox/sync/android/DbxList$ListOps;->listGet(I)Lcom/dropbox/sync/android/DbxAtom;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/sync/android/DbxAtom;->asDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public getLong(I)J
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 127
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxList;->mOps:Lcom/dropbox/sync/android/DbxList$ListOps;

    invoke-interface {v0, p1}, Lcom/dropbox/sync/android/DbxList$ListOps;->listGet(I)Lcom/dropbox/sync/android/DbxAtom;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/sync/android/DbxAtom;->asLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 145
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxList;->mOps:Lcom/dropbox/sync/android/DbxList$ListOps;

    invoke-interface {v0, p1}, Lcom/dropbox/sync/android/DbxList$ListOps;->listGet(I)Lcom/dropbox/sync/android/DbxAtom;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/sync/android/DbxAtom;->asString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType(I)Lcom/dropbox/sync/android/DbxFields$AtomType;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 110
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxList;->mOps:Lcom/dropbox/sync/android/DbxList$ListOps;

    invoke-interface {v0, p1}, Lcom/dropbox/sync/android/DbxList$ListOps;->listGet(I)Lcom/dropbox/sync/android/DbxAtom;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/sync/android/DbxAtom;->atomType()Lcom/dropbox/sync/android/DbxFields$AtomType;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxList;->mOps:Lcom/dropbox/sync/android/DbxList$ListOps;

    invoke-interface {v0}, Lcom/dropbox/sync/android/DbxList$ListOps;->toList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxList;->mOps:Lcom/dropbox/sync/android/DbxList$ListOps;

    invoke-interface {v0}, Lcom/dropbox/sync/android/DbxList$ListOps;->listSize()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public move(II)Lcom/dropbox/sync/android/DbxList;
    .locals 1
    .param p1, "oldindex"    # I
    .param p2, "newIndex"    # I

    .prologue
    .line 468
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxList;->mOps:Lcom/dropbox/sync/android/DbxList$ListOps;

    invoke-interface {v0, p1, p2}, Lcom/dropbox/sync/android/DbxList$ListOps;->listMove(II)V

    .line 469
    return-object p0
.end method

.method public remove(I)Lcom/dropbox/sync/android/DbxList;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 454
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxList;->mOps:Lcom/dropbox/sync/android/DbxList$ListOps;

    invoke-interface {v0, p1}, Lcom/dropbox/sync/android/DbxList$ListOps;->listDelete(I)V

    .line 455
    return-object p0
.end method

.method public set(ID)Lcom/dropbox/sync/android/DbxList;
    .locals 2
    .param p1, "index"    # I
    .param p2, "elem"    # D

    .prologue
    .line 390
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxList;->mOps:Lcom/dropbox/sync/android/DbxList$ListOps;

    invoke-static {p2, p3}, Lcom/dropbox/sync/android/DbxAtom;->create(D)Lcom/dropbox/sync/android/DbxAtom;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/dropbox/sync/android/DbxList$ListOps;->listPut(ILcom/dropbox/sync/android/DbxAtom;)V

    .line 391
    return-object p0
.end method

.method public set(IJ)Lcom/dropbox/sync/android/DbxList;
    .locals 2
    .param p1, "index"    # I
    .param p2, "elem"    # J

    .prologue
    .line 377
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxList;->mOps:Lcom/dropbox/sync/android/DbxList$ListOps;

    invoke-static {p2, p3}, Lcom/dropbox/sync/android/DbxAtom;->create(J)Lcom/dropbox/sync/android/DbxAtom;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/dropbox/sync/android/DbxList$ListOps;->listPut(ILcom/dropbox/sync/android/DbxAtom;)V

    .line 378
    return-object p0
.end method

.method public set(ILjava/lang/String;)Lcom/dropbox/sync/android/DbxList;
    .locals 2
    .param p1, "index"    # I
    .param p2, "elem"    # Ljava/lang/String;

    .prologue
    .line 403
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxList;->mOps:Lcom/dropbox/sync/android/DbxList$ListOps;

    invoke-static {p2}, Lcom/dropbox/sync/android/DbxAtom;->create(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxAtom;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/dropbox/sync/android/DbxList$ListOps;->listPut(ILcom/dropbox/sync/android/DbxAtom;)V

    .line 404
    return-object p0
.end method

.method public set(ILjava/util/Date;)Lcom/dropbox/sync/android/DbxList;
    .locals 2
    .param p1, "index"    # I
    .param p2, "elem"    # Ljava/util/Date;

    .prologue
    .line 442
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxList;->mOps:Lcom/dropbox/sync/android/DbxList$ListOps;

    invoke-static {p2}, Lcom/dropbox/sync/android/DbxAtom;->create(Ljava/util/Date;)Lcom/dropbox/sync/android/DbxAtom;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/dropbox/sync/android/DbxList$ListOps;->listPut(ILcom/dropbox/sync/android/DbxAtom;)V

    .line 443
    return-object p0
.end method

.method public set(IZ)Lcom/dropbox/sync/android/DbxList;
    .locals 2
    .param p1, "index"    # I
    .param p2, "elem"    # Z

    .prologue
    .line 364
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxList;->mOps:Lcom/dropbox/sync/android/DbxList$ListOps;

    invoke-static {p2}, Lcom/dropbox/sync/android/DbxAtom;->create(Z)Lcom/dropbox/sync/android/DbxAtom;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/dropbox/sync/android/DbxList$ListOps;->listPut(ILcom/dropbox/sync/android/DbxAtom;)V

    .line 365
    return-object p0
.end method

.method public set(I[B)Lcom/dropbox/sync/android/DbxList;
    .locals 2
    .param p1, "index"    # I
    .param p2, "elem"    # [B

    .prologue
    .line 416
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxList;->mOps:Lcom/dropbox/sync/android/DbxList$ListOps;

    invoke-static {p2}, Lcom/dropbox/sync/android/DbxAtom;->create([B)Lcom/dropbox/sync/android/DbxAtom;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/dropbox/sync/android/DbxList$ListOps;->listPut(ILcom/dropbox/sync/android/DbxAtom;)V

    .line 417
    return-object p0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxList;->mOps:Lcom/dropbox/sync/android/DbxList$ListOps;

    invoke-interface {v0}, Lcom/dropbox/sync/android/DbxList$ListOps;->listSize()I

    move-result v0

    return v0
.end method

.method toList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/sync/android/DbxAtom;",
            ">;"
        }
    .end annotation

    .prologue
    .line 476
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxList;->mOps:Lcom/dropbox/sync/android/DbxList$ListOps;

    invoke-interface {v0}, Lcom/dropbox/sync/android/DbxList$ListOps;->toList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxList;->mOps:Lcom/dropbox/sync/android/DbxList$ListOps;

    invoke-interface {v0}, Lcom/dropbox/sync/android/DbxList$ListOps;->toList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
