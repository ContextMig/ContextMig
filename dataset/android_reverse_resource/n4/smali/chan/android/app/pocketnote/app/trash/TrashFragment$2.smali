.class Lchan/android/app/pocketnote/app/trash/TrashFragment$2;
.super Ljava/lang/Object;
.source "TrashFragment.java"

# interfaces
.implements Lchan/android/app/pocketnote/app/trash/ConfirmDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lchan/android/app/pocketnote/app/trash/TrashFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lchan/android/app/pocketnote/app/trash/TrashFragment;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/trash/TrashFragment$2;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x7a0f0bc5a96b3da1L    # -4.669997075490495E-280

    const-string v2, "chan/android/app/pocketnote/app/trash/TrashFragment$2"

    const/4 v3, 0x5

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/trash/TrashFragment$2;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lchan/android/app/pocketnote/app/trash/TrashFragment;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/trash/TrashFragment$2;->$jacocoInit()[Z

    move-result-object v0

    .line 95
    iput-object p1, p0, Lchan/android/app/pocketnote/app/trash/TrashFragment$2;->this$0:Lchan/android/app/pocketnote/app/trash/TrashFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onEnter(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/trash/TrashFragment$2;->$jacocoInit()[Z

    move-result-object v0

    .line 98
    if-nez p1, :cond_0

    aput-boolean v2, v0, v2

    .line 101
    :goto_0
    const/4 v1, 0x4

    aput-boolean v2, v0, v1

    return-void

    .line 98
    :cond_0
    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    .line 99
    invoke-static {}, Lchan/android/app/pocketnote/app/db/PocketNoteManager;->getPocketNoteManager()Lchan/android/app/pocketnote/app/db/PocketNoteManager;

    move-result-object v1

    invoke-virtual {v1}, Lchan/android/app/pocketnote/app/db/PocketNoteManager;->removeAll()V

    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    goto :goto_0
.end method
