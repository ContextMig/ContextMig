.class final enum Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option$4;
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

    sget-object v0, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option$4;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x30b056df2c868134L    # 3.6123985677303194E-74

    const-string v2, "chan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option$4"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option$4;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 7

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option$4;->$jacocoInit()[Z

    move-result-object v6

    .line 118
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
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option$4;->$jacocoInit()[Z

    move-result-object v0

    .line 121
    new-instance v1, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option$4$1;

    invoke-direct {v1, p0}, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option$4$1;-><init>(Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option$4;)V

    invoke-virtual {p0, p1, p2, v1}, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option$4;->askPassword(Landroid/support/v4/app/Fragment;Lchan/android/app/pocketnote/app/Note;Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Callback;)V

    .line 129
    aput-boolean v2, v0, v2

    return-void
.end method
