.class Lchan/android/app/pocketnote/app/calendar/CalendarFragment$9;
.super Ljava/lang/Object;
.source "CalendarFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->display(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lchan/android/app/pocketnote/app/calendar/CalendarFragment;

.field final synthetic val$month:I

.field final synthetic val$year:I


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$9;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x4c1c494394656fd0L    # -9.814348542662555E-59

    const-string v2, "chan/android/app/pocketnote/app/calendar/CalendarFragment$9"

    const/16 v3, 0xb

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$9;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lchan/android/app/pocketnote/app/calendar/CalendarFragment;II)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$9;->$jacocoInit()[Z

    move-result-object v0

    .line 380
    iput-object p1, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$9;->this$0:Lchan/android/app/pocketnote/app/calendar/CalendarFragment;

    iput p2, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$9;->val$month:I

    iput p3, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$9;->val$year:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$9;->$jacocoInit()[Z

    move-result-object v1

    .line 383
    iget-object v0, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$9;->this$0:Lchan/android/app/pocketnote/app/calendar/CalendarFragment;

    invoke-static {v0}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->access$900(Lchan/android/app/pocketnote/app/calendar/CalendarFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lchan/android/app/pocketnote/app/calendar/CalendarItem;

    aput-boolean v6, v1, v6

    .line 384
    invoke-virtual {v0}, Lchan/android/app/pocketnote/app/calendar/CalendarItem;->isIgnored()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x2

    aput-boolean v6, v1, v0

    .line 393
    :goto_0
    const/16 v0, 0xa

    aput-boolean v6, v1, v0

    return-void

    .line 384
    :cond_0
    const/4 v2, 0x3

    aput-boolean v6, v1, v2

    .line 385
    invoke-virtual {v0}, Lchan/android/app/pocketnote/app/calendar/CalendarItem;->getNotes()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x4

    aput-boolean v6, v1, v3

    .line 386
    if-nez v2, :cond_1

    const/4 v2, 0x5

    aput-boolean v6, v1, v2

    .line 387
    :goto_1
    iget-object v2, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$9;->this$0:Lchan/android/app/pocketnote/app/calendar/CalendarFragment;

    invoke-virtual {v0}, Lchan/android/app/pocketnote/app/calendar/CalendarItem;->getDay()I

    move-result v0

    invoke-static {v2, v0}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->access$1000(Lchan/android/app/pocketnote/app/calendar/CalendarFragment;I)V

    const/4 v0, 0x7

    aput-boolean v6, v1, v0

    goto :goto_0

    .line 386
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x6

    aput-boolean v6, v1, v2

    goto :goto_1

    .line 389
    :cond_2
    invoke-virtual {v0}, Lchan/android/app/pocketnote/app/calendar/CalendarItem;->getDay()I

    move-result v2

    const/16 v3, 0x8

    aput-boolean v6, v1, v3

    .line 390
    iget-object v3, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$9;->this$0:Lchan/android/app/pocketnote/app/calendar/CalendarFragment;

    iget v4, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$9;->val$month:I

    iget v5, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$9;->val$year:I

    invoke-virtual {v0}, Lchan/android/app/pocketnote/app/calendar/CalendarItem;->getNotes()Ljava/util/List;

    move-result-object v0

    invoke-static {v3, v2, v4, v5, v0}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->access$1100(Lchan/android/app/pocketnote/app/calendar/CalendarFragment;IIILjava/util/List;)V

    const/16 v0, 0x9

    aput-boolean v6, v1, v0

    goto :goto_0
.end method
