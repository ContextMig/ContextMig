.class Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option$7$1;
.super Ljava/lang/Object;
.source "OnLongClickCalendarNoteListener.java"

# interfaces
.implements Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option$7;->choose(Landroid/support/v4/app/Fragment;Lchan/android/app/pocketnote/app/Note;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option$7;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option$7$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x24e26562210db648L    # -8.208203437776587E130

    const-string v2, "chan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option$7$1"

    const/4 v3, 0x7

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option$7$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option$7;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option$7$1;->$jacocoInit()[Z

    move-result-object v0

    .line 191
    iput-object p1, p0, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option$7$1;->this$0:Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public doWork(Landroid/support/v4/app/Fragment;Lchan/android/app/pocketnote/app/Note;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/OnLongClickCalendarNoteListener$Option$7$1;->$jacocoInit()[Z

    move-result-object v0

    .line 194
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    aput-boolean v6, v0, v6

    .line 195
    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v2, 0x2

    aput-boolean v6, v0, v2

    .line 196
    const-string v2, "text/plain"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x3

    aput-boolean v6, v0, v2

    .line 197
    const-string v2, "android.intent.extra.SUBJECT"

    invoke-virtual {p2}, Lchan/android/app/pocketnote/app/Note;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x4

    aput-boolean v6, v0, v2

    .line 198
    const-string v2, "android.intent.extra.TEXT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lchan/android/app/pocketnote/app/Note;->getContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lchan/android/app/pocketnote/app/Note;->getModifiedTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Lchan/android/app/pocketnote/app/NoteDateFormatter;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x5

    aput-boolean v6, v0, v2

    .line 199
    invoke-virtual {p1, v1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 200
    const/4 v1, 0x6

    aput-boolean v6, v0, v1

    return-void
.end method
