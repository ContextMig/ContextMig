.class Lchan/android/app/pocketnote/app/calendar/CalendarItemAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "CalendarItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lchan/android/app/pocketnote/app/calendar/CalendarItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field container:Lchan/android/app/pocketnote/app/calendar/BucketNoteView;

.field day:Landroid/widget/TextView;

.field parent:Landroid/widget/LinearLayout;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/calendar/CalendarItemAdapter$ViewHolder;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x1a4f3c32b24aa6edL    # -6.956601203344616E181

    const-string v2, "chan/android/app/pocketnote/app/calendar/CalendarItemAdapter$ViewHolder"

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/calendar/CalendarItemAdapter$ViewHolder;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/calendar/CalendarItemAdapter$ViewHolder;->$jacocoInit()[Z

    move-result-object v1

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    aput-boolean v2, v1, v0

    .line 137
    const v0, 0x7f0c0051

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lchan/android/app/pocketnote/app/calendar/CalendarItemAdapter$ViewHolder;->parent:Landroid/widget/LinearLayout;

    aput-boolean v2, v1, v2

    .line 138
    const v0, 0x7f0c0053

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lchan/android/app/pocketnote/app/calendar/BucketNoteView;

    iput-object v0, p0, Lchan/android/app/pocketnote/app/calendar/CalendarItemAdapter$ViewHolder;->container:Lchan/android/app/pocketnote/app/calendar/BucketNoteView;

    const/4 v0, 0x2

    aput-boolean v2, v1, v0

    .line 139
    const v0, 0x7f0c0052

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lchan/android/app/pocketnote/app/calendar/CalendarItemAdapter$ViewHolder;->day:Landroid/widget/TextView;

    .line 140
    const/4 v0, 0x3

    aput-boolean v2, v1, v0

    return-void
.end method
