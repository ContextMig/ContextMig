.class final enum Lchan/android/app/pocketnote/app/notes/OnLongClickNoteListener$Option$7;
.super Lchan/android/app/pocketnote/app/notes/OnLongClickNoteListener$Option;
.source "OnLongClickNoteListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lchan/android/app/pocketnote/app/notes/OnLongClickNoteListener$Option;
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

    sget-object v0, Lchan/android/app/pocketnote/app/notes/OnLongClickNoteListener$Option$7;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x7d2c8209ae7c2346L    # 9.1035737868921E294

    const-string v2, "chan/android/app/pocketnote/app/notes/OnLongClickNoteListener$Option$7"

    const/4 v3, 0x6

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/notes/OnLongClickNoteListener$Option$7;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 7

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/notes/OnLongClickNoteListener$Option$7;->$jacocoInit()[Z

    move-result-object v6

    .line 168
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lchan/android/app/pocketnote/app/notes/OnLongClickNoteListener$Option;-><init>(Ljava/lang/String;ILjava/lang/String;ILchan/android/app/pocketnote/app/notes/OnLongClickNoteListener$1;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    aput-boolean v1, v6, v0

    return-void
.end method


# virtual methods
.method public choose(Landroid/support/v4/app/Fragment;Lchan/android/app/pocketnote/app/Note;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/notes/OnLongClickNoteListener$Option$7;->$jacocoInit()[Z

    move-result-object v0

    .line 171
    new-instance v1, Lchan/android/app/pocketnote/app/notes/OnLongClickNoteListener$Option$7$1;

    invoke-direct {v1, p0}, Lchan/android/app/pocketnote/app/notes/OnLongClickNoteListener$Option$7$1;-><init>(Lchan/android/app/pocketnote/app/notes/OnLongClickNoteListener$Option$7;)V

    aput-boolean v3, v0, v3

    .line 182
    invoke-virtual {p2}, Lchan/android/app/pocketnote/app/Note;->isLocked()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    aput-boolean v3, v0, v2

    .line 183
    invoke-virtual {p0, p1, p2, v1}, Lchan/android/app/pocketnote/app/notes/OnLongClickNoteListener$Option$7;->askPassword(Landroid/support/v4/app/Fragment;Lchan/android/app/pocketnote/app/Note;Lchan/android/app/pocketnote/app/notes/OnLongClickNoteListener$Callback;)V

    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    .line 187
    :goto_0
    const/4 v1, 0x5

    aput-boolean v3, v0, v1

    return-void

    .line 185
    :cond_0
    invoke-interface {v1, p1, p2}, Lchan/android/app/pocketnote/app/notes/OnLongClickNoteListener$Callback;->doWork(Landroid/support/v4/app/Fragment;Lchan/android/app/pocketnote/app/Note;)V

    const/4 v1, 0x4

    aput-boolean v3, v0, v1

    goto :goto_0
.end method
