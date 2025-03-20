.class Lchan/android/app/pocketnote/app/notes/OnLongClickNoteListener$Option$6$1;
.super Ljava/lang/Object;
.source "OnLongClickNoteListener.java"

# interfaces
.implements Lchan/android/app/pocketnote/app/notes/OnLongClickNoteListener$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lchan/android/app/pocketnote/app/notes/OnLongClickNoteListener$Option$6;->choose(Landroid/support/v4/app/Fragment;Lchan/android/app/pocketnote/app/Note;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lchan/android/app/pocketnote/app/notes/OnLongClickNoteListener$Option$6;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/notes/OnLongClickNoteListener$Option$6$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x2e842c755fa580d1L    # -3.3785845929190365E84

    const-string v2, "chan/android/app/pocketnote/app/notes/OnLongClickNoteListener$Option$6$1"

    const/4 v3, 0x5

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/notes/OnLongClickNoteListener$Option$6$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lchan/android/app/pocketnote/app/notes/OnLongClickNoteListener$Option$6;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/notes/OnLongClickNoteListener$Option$6$1;->$jacocoInit()[Z

    move-result-object v0

    .line 150
    iput-object p1, p0, Lchan/android/app/pocketnote/app/notes/OnLongClickNoteListener$Option$6$1;->this$0:Lchan/android/app/pocketnote/app/notes/OnLongClickNoteListener$Option$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public doWork(Landroid/support/v4/app/Fragment;Lchan/android/app/pocketnote/app/Note;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/notes/OnLongClickNoteListener$Option$6$1;->$jacocoInit()[Z

    move-result-object v0

    .line 153
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lchan/android/app/pocketnote/app/reminder/ReminderActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    aput-boolean v4, v0, v4

    .line 154
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v2, 0x2

    aput-boolean v4, v0, v2

    .line 155
    const-string v2, "note_bundle_key"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v2, 0x3

    aput-boolean v4, v0, v2

    .line 156
    invoke-virtual {p1, v1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 157
    const/4 v1, 0x4

    aput-boolean v4, v0, v1

    return-void
.end method
