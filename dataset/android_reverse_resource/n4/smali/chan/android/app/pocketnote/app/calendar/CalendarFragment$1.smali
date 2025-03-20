.class Lchan/android/app/pocketnote/app/calendar/CalendarFragment$1;
.super Ljava/lang/Object;
.source "CalendarFragment.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lchan/android/app/pocketnote/app/calendar/CalendarFragment;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x69b7600673de661eL    # 1.7892481207189256E201

    const-string v2, "chan/android/app/pocketnote/app/calendar/CalendarFragment$1"

    const/16 v3, 0xd

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lchan/android/app/pocketnote/app/calendar/CalendarFragment;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$1;->$jacocoInit()[Z

    move-result-object v0

    .line 80
    iput-object p1, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$1;->this$0:Lchan/android/app/pocketnote/app/calendar/CalendarFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$1;->$jacocoInit()[Z

    move-result-object v0

    .line 97
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x8

    aput-boolean v4, v0, v1

    .line 101
    :goto_0
    const/16 v1, 0xc

    aput-boolean v4, v0, v1

    return v4

    .line 97
    :cond_0
    const/16 v1, 0x9

    aput-boolean v4, v0, v1

    .line 98
    iget-object v1, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$1;->this$0:Lchan/android/app/pocketnote/app/calendar/CalendarFragment;

    invoke-static {v1}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->access$200(Lchan/android/app/pocketnote/app/calendar/CalendarFragment;)Landroid/widget/ViewFlipper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    const/16 v1, 0xa

    aput-boolean v4, v0, v1

    .line 99
    iget-object v1, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$1;->this$0:Lchan/android/app/pocketnote/app/calendar/CalendarFragment;

    iget-object v2, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$1;->this$0:Lchan/android/app/pocketnote/app/calendar/CalendarFragment;

    invoke-static {v2}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->access$300(Lchan/android/app/pocketnote/app/calendar/CalendarFragment;)I

    move-result v2

    iget-object v3, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$1;->this$0:Lchan/android/app/pocketnote/app/calendar/CalendarFragment;

    invoke-static {v3}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->access$400(Lchan/android/app/pocketnote/app/calendar/CalendarFragment;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->access$500(Lchan/android/app/pocketnote/app/calendar/CalendarFragment;II)V

    const/16 v1, 0xb

    aput-boolean v4, v0, v1

    goto :goto_0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$1;->$jacocoInit()[Z

    move-result-object v1

    .line 83
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    aput-boolean v3, v1, v3

    .line 92
    .local v0, "notEmpty":Z
    :goto_0
    const/4 v2, 0x7

    aput-boolean v3, v1, v2

    return v3

    .line 83
    .end local v0    # "notEmpty":Z
    :cond_0
    aput-boolean v3, v1, v4

    .line 84
    iget-object v2, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$1;->this$0:Lchan/android/app/pocketnote/app/calendar/CalendarFragment;

    invoke-static {v2, p1}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->access$002(Lchan/android/app/pocketnote/app/calendar/CalendarFragment;Ljava/lang/String;)Ljava/lang/String;

    const/4 v2, 0x3

    aput-boolean v3, v1, v2

    .line 85
    iget-object v2, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$1;->this$0:Lchan/android/app/pocketnote/app/calendar/CalendarFragment;

    invoke-static {v2, p1}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->access$100(Lchan/android/app/pocketnote/app/calendar/CalendarFragment;Ljava/lang/String;)Z

    move-result v0

    .line 86
    .restart local v0    # "notEmpty":Z
    if-eqz v0, :cond_1

    const/4 v2, 0x4

    aput-boolean v3, v1, v2

    .line 87
    iget-object v2, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$1;->this$0:Lchan/android/app/pocketnote/app/calendar/CalendarFragment;

    invoke-static {v2}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->access$200(Lchan/android/app/pocketnote/app/calendar/CalendarFragment;)Landroid/widget/ViewFlipper;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    const/4 v2, 0x5

    aput-boolean v3, v1, v2

    goto :goto_0

    .line 89
    :cond_1
    iget-object v2, p0, Lchan/android/app/pocketnote/app/calendar/CalendarFragment$1;->this$0:Lchan/android/app/pocketnote/app/calendar/CalendarFragment;

    invoke-static {v2}, Lchan/android/app/pocketnote/app/calendar/CalendarFragment;->access$200(Lchan/android/app/pocketnote/app/calendar/CalendarFragment;)Landroid/widget/ViewFlipper;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    const/4 v2, 0x6

    aput-boolean v3, v1, v2

    goto :goto_0
.end method
