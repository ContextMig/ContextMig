.class Lchan/android/app/pocketnote/app/calendar/CalendarItem;
.super Ljava/lang/Object;
.source "CalendarItem.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private final day:I

.field private ignored:Z

.field private final month:I

.field private notes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lchan/android/app/pocketnote/app/Note;",
            ">;"
        }
    .end annotation
.end field

.field private final year:I


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/calendar/CalendarItem;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x335147c6ab262c8bL    # 1.680250606624705E-61

    const-string v2, "chan/android/app/pocketnote/app/calendar/CalendarItem"

    const/16 v3, 0x8

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/calendar/CalendarItem;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(IIIZ)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/CalendarItem;->$jacocoInit()[Z

    move-result-object v0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lchan/android/app/pocketnote/app/calendar/CalendarItem;->day:I

    .line 23
    iput p2, p0, Lchan/android/app/pocketnote/app/calendar/CalendarItem;->month:I

    .line 24
    iput p3, p0, Lchan/android/app/pocketnote/app/calendar/CalendarItem;->year:I

    .line 25
    iput-boolean p4, p0, Lchan/android/app/pocketnote/app/calendar/CalendarItem;->ignored:Z

    const/4 v1, 0x0

    aput-boolean v2, v0, v1

    .line 26
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lchan/android/app/pocketnote/app/calendar/CalendarItem;->notes:Ljava/util/List;

    .line 27
    aput-boolean v2, v0, v2

    return-void
.end method


# virtual methods
.method public getDay()I
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/CalendarItem;->$jacocoInit()[Z

    move-result-object v0

    .line 50
    iget v1, p0, Lchan/android/app/pocketnote/app/calendar/CalendarItem;->day:I

    const/4 v2, 0x5

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public getMonth()I
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/CalendarItem;->$jacocoInit()[Z

    move-result-object v0

    .line 54
    iget v1, p0, Lchan/android/app/pocketnote/app/calendar/CalendarItem;->month:I

    const/4 v2, 0x6

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public getNotes()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lchan/android/app/pocketnote/app/Note;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/CalendarItem;->$jacocoInit()[Z

    move-result-object v0

    .line 42
    iget-object v1, p0, Lchan/android/app/pocketnote/app/calendar/CalendarItem;->notes:Ljava/util/List;

    const/4 v2, 0x3

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getYear()I
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/CalendarItem;->$jacocoInit()[Z

    move-result-object v0

    .line 58
    iget v1, p0, Lchan/android/app/pocketnote/app/calendar/CalendarItem;->year:I

    const/4 v2, 0x7

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public isIgnored()Z
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/CalendarItem;->$jacocoInit()[Z

    move-result-object v0

    .line 34
    iget-boolean v1, p0, Lchan/android/app/pocketnote/app/calendar/CalendarItem;->ignored:Z

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public setNotes(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lchan/android/app/pocketnote/app/Note;",
            ">;)V"
        }
    .end annotation

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/CalendarItem;->$jacocoInit()[Z

    move-result-object v0

    .line 46
    iput-object p1, p0, Lchan/android/app/pocketnote/app/calendar/CalendarItem;->notes:Ljava/util/List;

    .line 47
    const/4 v1, 0x4

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
