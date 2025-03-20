.class Lchan/android/app/pocketnote/app/calendar/CalendarFragment$11;
.super Ljava/lang/Object;
.source "CalendarFragment.java"

# interfaces
.implements Lchan/android/app/pocketnote/app/trash/ConfirmDialogFragment$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->showConfirmDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lchan/android/app/pocketnote/app/calendar/CalendarFragment;

.field final synthetic val$day:I


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$11;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x3fe899caed79c349L    # -5.849811829989611

    const-string v2, "chan/android/app/pocketnote/app/calendar/CalendarFragment$11"

    const/4 v3, 0x5

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$11;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lchan/android/app/pocketnote/app/calendar/CalendarFragment;I)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$11;->$jacocoInit()[Z

    move-result-object v0

    .line 451
    iput-object p1, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$11;->this$0:Lchan/android/app/pocketnote/app/calendar/CalendarFragment;

    iput p2, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$11;->val$day:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onEnter(Z)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$11;->$jacocoInit()[Z

    move-result-object v0

    .line 454
    if-nez p1, :cond_0

    aput-boolean v6, v0, v6

    .line 457
    :goto_0
    const/4 v1, 0x4

    aput-boolean v6, v0, v1

    return-void

    .line 454
    :cond_0
    const/4 v1, 0x2

    aput-boolean v6, v0, v1

    .line 455
    iget-object v1, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$11;->this$0:Lchan/android/app/pocketnote/app/calendar/CalendarFragment;

    iget v2, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$11;->val$day:I

    iget-object v3, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$11;->this$0:Lchan/android/app/pocketnote/app/calendar/CalendarFragment;

    invoke-static {v3}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->access$300(Lchan/android/app/pocketnote/app/calendar/CalendarFragment;)I

    move-result v3

    iget-object v4, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$11;->this$0:Lchan/android/app/pocketnote/app/calendar/CalendarFragment;

    invoke-static {v4}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->access$400(Lchan/android/app/pocketnote/app/calendar/CalendarFragment;)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->access$600(Lchan/android/app/pocketnote/app/calendar/CalendarFragment;IIILchan/android/app/pocketnote/app/Note;)V

    const/4 v1, 0x3

    aput-boolean v6, v0, v1

    goto :goto_0
.end method
