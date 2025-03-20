.class Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option$2$1;
.super Ljava/lang/Object;
.source "OnLongClickCalendarNoteListener.java"

# interfaces
.implements Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option$2;->choose(Landroid/support/v4/app/Fragment;Lchan/android/app/pocketnote/app/Note;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option$2;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option$2$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x7cbf5bffff6d12baL    # -5.211033466302352E-293

    const-string v2, "chan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option$2$1"

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option$2$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option$2;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option$2$1;->$jacocoInit()[Z

    move-result-object v0

    .line 87
    iput-object p1, p0, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option$2$1;->this$0:Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public doWork(Landroid/support/v4/app/Fragment;Lchan/android/app/pocketnote/app/Note;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option$2$1;->$jacocoInit()[Z

    move-result-object v0

    .line 90
    invoke-static {}, Lchan/android/app/pocketnote/app/db/PocketNoteManager;->getPocketNoteManager()Lchan/android/app/pocketnote/app/db/PocketNoteManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Lchan/android/app/pocketnote/app/db/PocketNoteManager;->uncheck(Lchan/android/app/pocketnote/app/Note;)V

    .line 91
    check-cast p1, Lchan/android/app/pocketnote/app/calendar/NoteAdapterNotifier;

    aput-boolean v2, v0, v2

    .line 92
    invoke-interface {p1}, Lchan/android/app/pocketnote/app/calendar/NoteAdapterNotifier;->notifyAdapter()V

    .line 93
    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    return-void
.end method
