.class final enum Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option$5;
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

    sget-object v0, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option$5;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x18ab079549481fecL    # -5.839606068448966E189

    const-string v2, "chan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option$5"

    const/16 v3, 0xf

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option$5;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 7

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option$5;->$jacocoInit()[Z

    move-result-object v6

    .line 132
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

.method static synthetic access$100(Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option$5;Ljava/util/List;)Ljava/util/List;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option$5;->$jacocoInit()[Z

    move-result-object v0

    .line 132
    invoke-direct {p0, p1}, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option$5;->cloneNoteWithNoTrash(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    const/16 v2, 0xe

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private cloneNoteWithNoTrash(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lchan/android/app/pocketnote/app/Note;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lchan/android/app/pocketnote/app/Note;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option$5;->$jacocoInit()[Z

    move-result-object v1

    .line 157
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x6

    aput-boolean v5, v1, v0

    .line 158
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v0, 0x7

    aput-boolean v5, v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lchan/android/app/pocketnote/app/Note;

    const/16 v4, 0x8

    aput-boolean v5, v1, v4

    .line 159
    invoke-virtual {v0}, Lchan/android/app/pocketnote/app/Note;->isTrashed()Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v0, 0x9

    aput-boolean v5, v1, v0

    .line 162
    :goto_1
    const/16 v0, 0xc

    aput-boolean v5, v1, v0

    goto :goto_0

    .line 159
    :cond_0
    const/16 v4, 0xa

    aput-boolean v5, v1, v4

    .line 160
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v0, 0xb

    aput-boolean v5, v1, v0

    goto :goto_1

    .line 163
    :cond_1
    const/16 v0, 0xd

    aput-boolean v5, v1, v0

    return-object v2
.end method


# virtual methods
.method public choose(Landroid/support/v4/app/Fragment;Lchan/android/app/pocketnote/app/Note;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option$5;->$jacocoInit()[Z

    move-result-object v0

    .line 135
    new-instance v1, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option$5$1;

    invoke-direct {v1, p0}, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option$5$1;-><init>(Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option$5;)V

    aput-boolean v3, v0, v3

    .line 149
    invoke-virtual {p2}, Lchan/android/app/pocketnote/app/Note;->isLocked()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    aput-boolean v3, v0, v2

    .line 150
    invoke-virtual {p0, p1, p2, v1}, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option$5;->askPassword(Landroid/support/v4/app/Fragment;Lchan/android/app/pocketnote/app/Note;Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Callback;)V

    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    .line 154
    :goto_0
    const/4 v1, 0x5

    aput-boolean v3, v0, v1

    return-void

    .line 152
    :cond_0
    invoke-interface {v1, p1, p2}, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Callback;->doWork(Landroid/support/v4/app/Fragment;Lchan/android/app/pocketnote/app/Note;)V

    const/4 v1, 0x4

    aput-boolean v3, v0, v1

    goto :goto_0
.end method
