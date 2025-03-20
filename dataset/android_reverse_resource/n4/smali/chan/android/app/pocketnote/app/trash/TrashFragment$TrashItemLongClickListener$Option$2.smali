.class final enum Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashItemLongClickListener$Option$2;
.super Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashItemLongClickListener$Option;
.source "TrashFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashItemLongClickListener$Option;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashItemLongClickListener$Option$2;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x59e272353f008e9aL    # -4.365924739441203E-125

    const-string v2, "chan/android/app/pocketnote/app/trash/TrashFragment$TrashItemLongClickListener$Option$2"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashItemLongClickListener$Option$2;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 7

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashItemLongClickListener$Option$2;->$jacocoInit()[Z

    move-result-object v6

    .line 218
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashItemLongClickListener$Option;-><init>(Ljava/lang/String;ILjava/lang/String;ILchan/android/app/pocketnote/app/trash/TrashFragment$1;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    aput-boolean v1, v6, v0

    return-void
.end method


# virtual methods
.method public choose(Landroid/content/Context;Lchan/android/app/pocketnote/app/Note;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashItemLongClickListener$Option$2;->$jacocoInit()[Z

    move-result-object v0

    .line 221
    invoke-static {}, Lchan/android/app/pocketnote/app/db/PocketNoteManager;->getPocketNoteManager()Lchan/android/app/pocketnote/app/db/PocketNoteManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Lchan/android/app/pocketnote/app/db/PocketNoteManager;->restore(Lchan/android/app/pocketnote/app/Note;)V

    .line 222
    aput-boolean v2, v0, v2

    return-void
.end method
