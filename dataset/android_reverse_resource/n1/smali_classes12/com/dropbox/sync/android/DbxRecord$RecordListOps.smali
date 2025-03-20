.class Lcom/dropbox/sync/android/DbxRecord$RecordListOps;
.super Ljava/lang/Object;
.source "DbxRecord.java"

# interfaces
.implements Lcom/dropbox/sync/android/DbxList$ListOps;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/sync/android/DbxRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecordListOps"
.end annotation


# instance fields
.field private final mName:Ljava/lang/String;

.field final synthetic this$0:Lcom/dropbox/sync/android/DbxRecord;


# direct methods
.method public constructor <init>(Lcom/dropbox/sync/android/DbxRecord;Ljava/lang/String;)V
    .locals 0
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 511
    iput-object p1, p0, Lcom/dropbox/sync/android/DbxRecord$RecordListOps;->this$0:Lcom/dropbox/sync/android/DbxRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 512
    iput-object p2, p0, Lcom/dropbox/sync/android/DbxRecord$RecordListOps;->mName:Ljava/lang/String;

    .line 513
    return-void
.end method


# virtual methods
.method public listAppend(Lcom/dropbox/sync/android/DbxAtom;)V
    .locals 5
    .param p1, "atom"    # Lcom/dropbox/sync/android/DbxAtom;

    .prologue
    .line 548
    iget-object v2, p0, Lcom/dropbox/sync/android/DbxRecord$RecordListOps;->this$0:Lcom/dropbox/sync/android/DbxRecord;

    iget-object v3, p0, Lcom/dropbox/sync/android/DbxRecord$RecordListOps;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/dropbox/sync/android/DbxRecord;->checkBeforeWrite(Ljava/lang/String;)V

    .line 549
    invoke-virtual {p1}, Lcom/dropbox/sync/android/DbxAtom;->getNativeAtom()J

    move-result-wide v0

    .line 551
    .local v0, "atomHandle":J
    :try_start_0
    iget-object v2, p0, Lcom/dropbox/sync/android/DbxRecord$RecordListOps;->this$0:Lcom/dropbox/sync/android/DbxRecord;

    iget-wide v2, v2, Lcom/dropbox/sync/android/DbxRecord;->mNativeHandle:J

    iget-object v4, p0, Lcom/dropbox/sync/android/DbxRecord$RecordListOps;->mName:Ljava/lang/String;

    invoke-static {v2, v3, v4, v0, v1}, Lcom/dropbox/sync/android/DbxRecord;->nativeListAppend(JLjava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 553
    invoke-static {v0, v1}, Lcom/dropbox/sync/android/NativeValue;->nativeFreeAtom(J)J

    .line 555
    return-void

    .line 553
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Lcom/dropbox/sync/android/NativeValue;->nativeFreeAtom(J)J

    throw v2
.end method

.method public listClear()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 531
    iget-object v2, p0, Lcom/dropbox/sync/android/DbxRecord$RecordListOps;->this$0:Lcom/dropbox/sync/android/DbxRecord;

    iget-object v3, p0, Lcom/dropbox/sync/android/DbxRecord$RecordListOps;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/dropbox/sync/android/DbxRecord;->checkBeforeWrite(Ljava/lang/String;)V

    .line 532
    new-array v0, v5, [Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/sync/android/DbxRecord$RecordListOps;->mName:Ljava/lang/String;

    aput-object v2, v0, v4

    .line 533
    .local v0, "names":[Ljava/lang/String;
    new-array v1, v5, [J

    sget-object v2, Lcom/dropbox/sync/android/DbxListValue;->EMPTY:Lcom/dropbox/sync/android/DbxListValue;

    invoke-virtual {v2}, Lcom/dropbox/sync/android/DbxListValue;->getNativeValue()J

    move-result-wide v2

    aput-wide v2, v1, v4

    .line 535
    .local v1, "values":[J
    :try_start_0
    iget-object v2, p0, Lcom/dropbox/sync/android/DbxRecord$RecordListOps;->this$0:Lcom/dropbox/sync/android/DbxRecord;

    iget-wide v2, v2, Lcom/dropbox/sync/android/DbxRecord;->mNativeHandle:J

    invoke-static {v2, v3, v0, v1}, Lcom/dropbox/sync/android/DbxRecord;->nativeUpdate(J[Ljava/lang/String;[J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 537
    aget-wide v2, v1, v4

    invoke-static {v2, v3}, Lcom/dropbox/sync/android/NativeValue;->nativeFreeValue(J)J

    .line 539
    return-void

    .line 537
    :catchall_0
    move-exception v2

    aget-wide v4, v1, v4

    invoke-static {v4, v5}, Lcom/dropbox/sync/android/NativeValue;->nativeFreeValue(J)J

    throw v2
.end method

.method public listDelete(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 581
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxRecord$RecordListOps;->this$0:Lcom/dropbox/sync/android/DbxRecord;

    iget-object v1, p0, Lcom/dropbox/sync/android/DbxRecord$RecordListOps;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dropbox/sync/android/DbxRecord;->checkBeforeWrite(Ljava/lang/String;)V

    .line 582
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxRecord$RecordListOps;->this$0:Lcom/dropbox/sync/android/DbxRecord;

    iget-wide v0, v0, Lcom/dropbox/sync/android/DbxRecord;->mNativeHandle:J

    iget-object v2, p0, Lcom/dropbox/sync/android/DbxRecord$RecordListOps;->mName:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lcom/dropbox/sync/android/DbxRecord;->nativeListDelete(JLjava/lang/String;I)V

    .line 583
    return-void
.end method

.method public listGet(I)Lcom/dropbox/sync/android/DbxAtom;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 543
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxRecord$RecordListOps;->this$0:Lcom/dropbox/sync/android/DbxRecord;

    iget-wide v0, v0, Lcom/dropbox/sync/android/DbxRecord;->mNativeHandle:J

    iget-object v2, p0, Lcom/dropbox/sync/android/DbxRecord$RecordListOps;->mName:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lcom/dropbox/sync/android/DbxRecord;->nativeListGet(JLjava/lang/String;I)Lcom/dropbox/sync/android/DbxAtom;

    move-result-object v0

    return-object v0
.end method

.method public listInsert(ILcom/dropbox/sync/android/DbxAtom;)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "atom"    # Lcom/dropbox/sync/android/DbxAtom;

    .prologue
    .line 559
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxRecord$RecordListOps;->this$0:Lcom/dropbox/sync/android/DbxRecord;

    iget-object v1, p0, Lcom/dropbox/sync/android/DbxRecord$RecordListOps;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dropbox/sync/android/DbxRecord;->checkBeforeWrite(Ljava/lang/String;)V

    .line 560
    invoke-virtual {p2}, Lcom/dropbox/sync/android/DbxAtom;->getNativeAtom()J

    move-result-wide v4

    .line 562
    .local v4, "atomHandle":J
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxRecord$RecordListOps;->this$0:Lcom/dropbox/sync/android/DbxRecord;

    iget-wide v0, v0, Lcom/dropbox/sync/android/DbxRecord;->mNativeHandle:J

    iget-object v2, p0, Lcom/dropbox/sync/android/DbxRecord$RecordListOps;->mName:Ljava/lang/String;

    move v3, p1

    invoke-static/range {v0 .. v5}, Lcom/dropbox/sync/android/DbxRecord;->nativeListInsert(JLjava/lang/String;IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 564
    invoke-static {v4, v5}, Lcom/dropbox/sync/android/NativeValue;->nativeFreeAtom(J)J

    .line 566
    return-void

    .line 564
    :catchall_0
    move-exception v0

    invoke-static {v4, v5}, Lcom/dropbox/sync/android/NativeValue;->nativeFreeAtom(J)J

    throw v0
.end method

.method public listMove(II)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "newIndex"    # I

    .prologue
    .line 587
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxRecord$RecordListOps;->this$0:Lcom/dropbox/sync/android/DbxRecord;

    iget-object v1, p0, Lcom/dropbox/sync/android/DbxRecord$RecordListOps;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dropbox/sync/android/DbxRecord;->checkBeforeWrite(Ljava/lang/String;)V

    .line 588
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxRecord$RecordListOps;->this$0:Lcom/dropbox/sync/android/DbxRecord;

    iget-wide v0, v0, Lcom/dropbox/sync/android/DbxRecord;->mNativeHandle:J

    iget-object v2, p0, Lcom/dropbox/sync/android/DbxRecord$RecordListOps;->mName:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/dropbox/sync/android/DbxRecord;->nativeListMove(JLjava/lang/String;II)V

    .line 589
    return-void
.end method

.method public listPut(ILcom/dropbox/sync/android/DbxAtom;)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "atom"    # Lcom/dropbox/sync/android/DbxAtom;

    .prologue
    .line 570
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxRecord$RecordListOps;->this$0:Lcom/dropbox/sync/android/DbxRecord;

    iget-object v1, p0, Lcom/dropbox/sync/android/DbxRecord$RecordListOps;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dropbox/sync/android/DbxRecord;->checkBeforeWrite(Ljava/lang/String;)V

    .line 571
    invoke-virtual {p2}, Lcom/dropbox/sync/android/DbxAtom;->getNativeAtom()J

    move-result-wide v4

    .line 573
    .local v4, "atomHandle":J
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxRecord$RecordListOps;->this$0:Lcom/dropbox/sync/android/DbxRecord;

    iget-wide v0, v0, Lcom/dropbox/sync/android/DbxRecord;->mNativeHandle:J

    iget-object v2, p0, Lcom/dropbox/sync/android/DbxRecord$RecordListOps;->mName:Ljava/lang/String;

    move v3, p1

    invoke-static/range {v0 .. v5}, Lcom/dropbox/sync/android/DbxRecord;->nativeListPut(JLjava/lang/String;IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 575
    invoke-static {v4, v5}, Lcom/dropbox/sync/android/NativeValue;->nativeFreeAtom(J)J

    .line 577
    return-void

    .line 575
    :catchall_0
    move-exception v0

    invoke-static {v4, v5}, Lcom/dropbox/sync/android/NativeValue;->nativeFreeAtom(J)J

    throw v0
.end method

.method public listSize()I
    .locals 3

    .prologue
    .line 526
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxRecord$RecordListOps;->this$0:Lcom/dropbox/sync/android/DbxRecord;

    iget-wide v0, v0, Lcom/dropbox/sync/android/DbxRecord;->mNativeHandle:J

    iget-object v2, p0, Lcom/dropbox/sync/android/DbxRecord$RecordListOps;->mName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/dropbox/sync/android/DbxRecord;->nativeListSize(JLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public toList()Ljava/util/List;
    .locals 4
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
    .line 517
    iget-object v1, p0, Lcom/dropbox/sync/android/DbxRecord$RecordListOps;->this$0:Lcom/dropbox/sync/android/DbxRecord;

    iget-wide v2, v1, Lcom/dropbox/sync/android/DbxRecord;->mNativeHandle:J

    iget-object v1, p0, Lcom/dropbox/sync/android/DbxRecord$RecordListOps;->mName:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Lcom/dropbox/sync/android/DbxRecord;->nativeGetField(JLjava/lang/String;)Lcom/dropbox/sync/android/DbxValue;

    move-result-object v0

    .line 518
    .local v0, "v":Lcom/dropbox/sync/android/DbxValue;
    if-nez v0, :cond_0

    .line 519
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 521
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/dropbox/sync/android/DbxValue;->asList()Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method
