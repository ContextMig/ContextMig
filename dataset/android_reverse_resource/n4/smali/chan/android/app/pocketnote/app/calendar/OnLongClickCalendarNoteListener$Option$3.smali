.class final enum Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option$3;
.super Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option;
.source "OnLongClickCalendarNoteListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option;
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

    sget-object v0, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option$3;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x665d7a27eace43d3L    # 1.2525156601053752E185

    const-string v2, "chan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option$3"

    const/16 v3, 0x8

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option$3;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 7

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option$3;->$jacocoInit()[Z

    move-result-object v6

    .line 103
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option;-><init>(Ljava/lang/String;ILjava/lang/String;ILchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$1;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    aput-boolean v1, v6, v0

    return-void
.end method


# virtual methods
.method public choose(Landroid/support/v4/app/Fragment;Lchan/android/app/pocketnote/app/Note;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option$3;->$jacocoInit()[Z

    move-result-object v0

    .line 106
    invoke-static {}, Lchan/android/app/pocketnote/app/AppPreferences;->getPassword()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    aput-boolean v4, v0, v4

    .line 107
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lchan/android/app/pocketnote/app/settings/NewPasswordActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x2

    aput-boolean v4, v0, v2

    .line 108
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v2, 0x3

    aput-boolean v4, v0, v2

    .line 109
    invoke-virtual {p1, v1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 110
    const/4 v1, 0x4

    aput-boolean v4, v0, v1

    .line 115
    :goto_0
    const/4 v1, 0x7

    aput-boolean v4, v0, v1

    return-void

    .line 111
    :cond_0
    invoke-static {}, Lchan/android/app/pocketnote/app/db/PocketNoteManager;->getPocketNoteManager()Lchan/android/app/pocketnote/app/db/PocketNoteManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Lchan/android/app/pocketnote/app/db/PocketNoteManager;->lock(Lchan/android/app/pocketnote/app/Note;)V

    .line 112
    check-cast p1, Lchan/android/app/pocketnote/app/calendar/NoteAdapterNotifier;

    const/4 v1, 0x5

    aput-boolean v4, v0, v1

    .line 113
    invoke-interface {p1}, Lchan/android/app/pocketnote/app/calendar/NoteAdapterNotifier;->notifyAdapter()V

    const/4 v1, 0x6

    aput-boolean v4, v0, v1

    goto :goto_0
.end method
