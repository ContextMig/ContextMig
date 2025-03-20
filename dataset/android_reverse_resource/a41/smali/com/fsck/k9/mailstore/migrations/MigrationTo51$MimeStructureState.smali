.class Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;
.super Ljava/lang/Object;
.source "MigrationTo51.java"


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mailstore/migrations/MigrationTo51;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MimeStructureState"
.end annotation


# instance fields
.field private isStateAdvanced:Z

.field private isValuesApplied:Z

.field private final nextOrder:I

.field private final parentId:J

.field private final prevParentId:Ljava/lang/Long;

.field private final rootPartId:Ljava/lang/Long;


# direct methods
.method private constructor <init>(Ljava/lang/Long;Ljava/lang/Long;JI)V
    .locals 1
    .param p1, "rootPartId"    # Ljava/lang/Long;
    .param p2, "prevParentId"    # Ljava/lang/Long;
    .param p3, "parentId"    # J
    .param p5, "nextOrder"    # I

    .prologue
    .line 684
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 685
    iput-object p1, p0, Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;->rootPartId:Ljava/lang/Long;

    .line 686
    iput-object p2, p0, Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;->prevParentId:Ljava/lang/Long;

    .line 687
    iput-wide p3, p0, Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;->parentId:J

    .line 688
    iput p5, p0, Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;->nextOrder:I

    .line 689
    return-void
.end method

.method static synthetic access$000(Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;)Ljava/lang/Long;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;

    .prologue
    .line 673
    iget-object v0, p0, Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;->rootPartId:Ljava/lang/Long;

    return-object v0
.end method

.method public static getNewRootState()Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 692
    new-instance v1, Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    move-object v3, v2

    invoke-direct/range {v1 .. v6}, Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;-><init>(Ljava/lang/Long;Ljava/lang/Long;JI)V

    return-object v1
.end method


# virtual methods
.method public applyValues(Landroid/content/ContentValues;)V
    .locals 4
    .param p1, "cv"    # Landroid/content/ContentValues;

    .prologue
    .line 720
    iget-boolean v0, p0, Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;->isValuesApplied:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;->isStateAdvanced:Z

    if-eqz v0, :cond_1

    .line 721
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "applyValues must be called exactly once, after a call to next*"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 723
    :cond_1
    iget-object v0, p0, Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;->rootPartId:Ljava/lang/Long;

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;->parentId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 724
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "applyValues must not be called after a root nextChild call"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 726
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;->isValuesApplied:Z

    .line 728
    iget-object v0, p0, Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;->rootPartId:Ljava/lang/Long;

    if-eqz v0, :cond_3

    .line 729
    const-string v0, "root"

    iget-object v1, p0, Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;->rootPartId:Ljava/lang/Long;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 731
    :cond_3
    const-string v0, "parent"

    iget-wide v2, p0, Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;->parentId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 732
    const-string v0, "seq"

    iget v1, p0, Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;->nextOrder:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 733
    return-void
.end method

.method public nextChild(J)Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;
    .locals 7
    .param p1, "newPartId"    # J

    .prologue
    .line 696
    iget-boolean v0, p0, Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;->isValuesApplied:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;->isStateAdvanced:Z

    if-eqz v0, :cond_1

    .line 697
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "next* methods must only be called once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 699
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;->isStateAdvanced:Z

    .line 701
    iget-object v0, p0, Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;->rootPartId:Ljava/lang/Long;

    if-nez v0, :cond_2

    .line 702
    new-instance v1, Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    iget v0, p0, Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;->nextOrder:I

    add-int/lit8 v6, v0, 0x1

    invoke-direct/range {v1 .. v6}, Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;-><init>(Ljava/lang/Long;Ljava/lang/Long;JI)V

    .line 704
    :goto_0
    return-object v1

    :cond_2
    new-instance v1, Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;

    iget-object v2, p0, Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;->rootPartId:Ljava/lang/Long;

    iget-object v3, p0, Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;->prevParentId:Ljava/lang/Long;

    iget-wide v4, p0, Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;->parentId:J

    iget v0, p0, Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;->nextOrder:I

    add-int/lit8 v6, v0, 0x1

    invoke-direct/range {v1 .. v6}, Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;-><init>(Ljava/lang/Long;Ljava/lang/Long;JI)V

    goto :goto_0
.end method

.method public nextMultipartChild(J)Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;
    .locals 7
    .param p1, "newPartId"    # J

    .prologue
    .line 708
    iget-boolean v0, p0, Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;->isValuesApplied:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;->isStateAdvanced:Z

    if-eqz v0, :cond_1

    .line 709
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "next* methods must only be called once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 711
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;->isStateAdvanced:Z

    .line 713
    iget-object v0, p0, Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;->rootPartId:Ljava/lang/Long;

    if-nez v0, :cond_2

    .line 714
    new-instance v1, Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v4, p0, Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;->parentId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget v0, p0, Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;->nextOrder:I

    add-int/lit8 v6, v0, 0x1

    move-wide v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;-><init>(Ljava/lang/Long;Ljava/lang/Long;JI)V

    .line 716
    :goto_0
    return-object v1

    :cond_2
    new-instance v1, Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;

    iget-object v2, p0, Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;->rootPartId:Ljava/lang/Long;

    iget-wide v4, p0, Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;->parentId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget v0, p0, Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;->nextOrder:I

    add-int/lit8 v6, v0, 0x1

    move-wide v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;-><init>(Ljava/lang/Long;Ljava/lang/Long;JI)V

    goto :goto_0
.end method

.method public popParent()Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;
    .locals 7

    .prologue
    .line 736
    iget-object v0, p0, Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;->prevParentId:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 737
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "popParent must only be called if parent depth is >= 2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 739
    :cond_0
    new-instance v1, Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;

    iget-object v2, p0, Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;->rootPartId:Ljava/lang/Long;

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;->prevParentId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget v6, p0, Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;->nextOrder:I

    invoke-direct/range {v1 .. v6}, Lcom/fsck/k9/mailstore/migrations/MigrationTo51$MimeStructureState;-><init>(Ljava/lang/Long;Ljava/lang/Long;JI)V

    return-object v1
.end method
