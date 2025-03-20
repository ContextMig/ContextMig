.class public Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarGridAdapter$ViewData;
.super Ljava/lang/Object;
.source "CalendarGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarGridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewData"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field public amountTextView:Landroid/widget/TextView;

.field public colorIndicatorMarginForToday:Z

.field public containsExpenses:Z

.field public dayTextView:Landroid/widget/TextView;

.field public isDisabled:Z

.field public isOutOfMonth:Z

.field public isSelected:Z

.field public isToday:Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarGridAdapter$ViewData;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x176e0824c538c3daL    # -5.246642879450392E195

    const-string v2, "com/benoitletondor/easybudgetapp/view/main/calendar/CalendarGridAdapter$ViewData"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarGridAdapter$ViewData;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarGridAdapter$ViewData;->$jacocoInit()[Z

    move-result-object v0

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    iput-boolean v2, p0, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarGridAdapter$ViewData;->isDisabled:Z

    .line 262
    iput-boolean v2, p0, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarGridAdapter$ViewData;->isOutOfMonth:Z

    .line 266
    iput-boolean v2, p0, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarGridAdapter$ViewData;->isToday:Z

    .line 270
    iput-boolean v2, p0, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarGridAdapter$ViewData;->isSelected:Z

    .line 274
    iput-boolean v2, p0, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarGridAdapter$ViewData;->containsExpenses:Z

    .line 278
    iput-boolean v2, p0, Lcom/benoitletondor/easybudgetapp/view/main/calendar/CalendarGridAdapter$ViewData;->colorIndicatorMarginForToday:Z

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method
