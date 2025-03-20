.class public Lluankevinferreira/expenses/MainActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final DELAY_MILLIS:I = 0x12c

.field public static final ORDER:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MainActivity"


# instance fields
.field private clickAlpha:Landroid/view/animation/Animation;

.field private fab:Landroid/support/design/widget/FloatingActionButton;

.field private formatter:Ljava/text/DecimalFormat;

.field private graph:Lcom/jjoe64/graphview/GraphView;

.field private graphicUtils:Lluankevinferreira/expenses/util/GraphicUtils;

.field private mTracker:Lcom/google/android/gms/analytics/Tracker;

.field private rotateBackward:Landroid/view/animation/Animation;

.field private rotateForward:Landroid/view/animation/Animation;

.field private series:Lcom/jjoe64/graphview/series/LineGraphSeries;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jjoe64/graphview/series/LineGraphSeries",
            "<",
            "Lcom/jjoe64/graphview/series/DataPoint;",
            ">;"
        }
    .end annotation
.end field

.field private totalMonth:Landroid/widget/Button;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lluankevinferreira/expenses/MainActivity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x4919c4723821bfb0L    # -3.1154553292957205E-44

    const-string v2, "luankevinferreira/expenses/MainActivity"

    const/16 v3, 0x6b

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lluankevinferreira/expenses/MainActivity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lluankevinferreira/expenses/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 43
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$000(Lluankevinferreira/expenses/MainActivity;)Landroid/support/design/widget/FloatingActionButton;
    .locals 4

    .prologue
    invoke-static {}, Lluankevinferreira/expenses/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 43
    iget-object v1, p0, Lluankevinferreira/expenses/MainActivity;->fab:Landroid/support/design/widget/FloatingActionButton;

    const/16 v2, 0x6a

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private configGraphic()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lluankevinferreira/expenses/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 173
    new-instance v1, Lcom/jjoe64/graphview/series/LineGraphSeries;

    iget-object v2, p0, Lluankevinferreira/expenses/MainActivity;->graphicUtils:Lluankevinferreira/expenses/util/GraphicUtils;

    invoke-virtual {p0}, Lluankevinferreira/expenses/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "* ALL *"

    invoke-virtual {v2, v3, v4}, Lluankevinferreira/expenses/util/GraphicUtils;->getDataPoints(Landroid/content/Context;Ljava/lang/String;)[Lcom/jjoe64/graphview/series/DataPoint;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/jjoe64/graphview/series/LineGraphSeries;-><init>([Lcom/jjoe64/graphview/series/DataPointInterface;)V

    iput-object v1, p0, Lluankevinferreira/expenses/MainActivity;->series:Lcom/jjoe64/graphview/series/LineGraphSeries;

    const/16 v1, 0x41

    aput-boolean v5, v0, v1

    .line 174
    iget-object v1, p0, Lluankevinferreira/expenses/MainActivity;->series:Lcom/jjoe64/graphview/series/LineGraphSeries;

    const v2, 0x7f080050

    invoke-virtual {p0, v2}, Lluankevinferreira/expenses/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jjoe64/graphview/series/LineGraphSeries;->setTitle(Ljava/lang/String;)V

    const/16 v1, 0x42

    aput-boolean v5, v0, v1

    .line 175
    iget-object v1, p0, Lluankevinferreira/expenses/MainActivity;->series:Lcom/jjoe64/graphview/series/LineGraphSeries;

    const/high16 v2, -0x10000

    invoke-virtual {v1, v2}, Lcom/jjoe64/graphview/series/LineGraphSeries;->setColor(I)V

    const/16 v1, 0x43

    aput-boolean v5, v0, v1

    .line 176
    iget-object v1, p0, Lluankevinferreira/expenses/MainActivity;->graph:Lcom/jjoe64/graphview/GraphView;

    iget-object v2, p0, Lluankevinferreira/expenses/MainActivity;->series:Lcom/jjoe64/graphview/series/LineGraphSeries;

    invoke-virtual {v1, v2}, Lcom/jjoe64/graphview/GraphView;->addSeries(Lcom/jjoe64/graphview/series/Series;)V

    const/16 v1, 0x44

    aput-boolean v5, v0, v1

    .line 178
    iget-object v1, p0, Lluankevinferreira/expenses/MainActivity;->graph:Lcom/jjoe64/graphview/GraphView;

    const v2, 0x7f08004f

    invoke-virtual {p0, v2}, Lluankevinferreira/expenses/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jjoe64/graphview/GraphView;->setTitle(Ljava/lang/String;)V

    const/16 v1, 0x45

    aput-boolean v5, v0, v1

    .line 180
    iget-object v1, p0, Lluankevinferreira/expenses/MainActivity;->graph:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v1}, Lcom/jjoe64/graphview/GraphView;->getViewport()Lcom/jjoe64/graphview/Viewport;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/jjoe64/graphview/Viewport;->setMinY(D)V

    const/16 v1, 0x46

    aput-boolean v5, v0, v1

    .line 181
    iget-object v1, p0, Lluankevinferreira/expenses/MainActivity;->graph:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v1}, Lcom/jjoe64/graphview/GraphView;->getViewport()Lcom/jjoe64/graphview/Viewport;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/jjoe64/graphview/Viewport;->setYAxisBoundsManual(Z)V

    const/16 v1, 0x47

    aput-boolean v5, v0, v1

    .line 183
    iget-object v1, p0, Lluankevinferreira/expenses/MainActivity;->graph:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v1}, Lcom/jjoe64/graphview/GraphView;->getLegendRenderer()Lcom/jjoe64/graphview/LegendRenderer;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/jjoe64/graphview/LegendRenderer;->setVisible(Z)V

    const/16 v1, 0x48

    aput-boolean v5, v0, v1

    .line 184
    iget-object v1, p0, Lluankevinferreira/expenses/MainActivity;->graph:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v1}, Lcom/jjoe64/graphview/GraphView;->getLegendRenderer()Lcom/jjoe64/graphview/LegendRenderer;

    move-result-object v1

    sget-object v2, Lcom/jjoe64/graphview/LegendRenderer$LegendAlign;->TOP:Lcom/jjoe64/graphview/LegendRenderer$LegendAlign;

    invoke-virtual {v1, v2}, Lcom/jjoe64/graphview/LegendRenderer;->setAlign(Lcom/jjoe64/graphview/LegendRenderer$LegendAlign;)V

    const/16 v1, 0x49

    aput-boolean v5, v0, v1

    .line 186
    new-instance v1, Lluankevinferreira/expenses/util/GraphicUtils;

    invoke-direct {v1}, Lluankevinferreira/expenses/util/GraphicUtils;-><init>()V

    iget-object v2, p0, Lluankevinferreira/expenses/MainActivity;->graph:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v1, v2}, Lluankevinferreira/expenses/util/GraphicUtils;->getLabels(Lcom/jjoe64/graphview/GraphView;)Lcom/jjoe64/graphview/helper/StaticLabelsFormatter;

    move-result-object v1

    const/16 v2, 0x4a

    aput-boolean v5, v0, v2

    .line 187
    iget-object v2, p0, Lluankevinferreira/expenses/MainActivity;->graph:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v2}, Lcom/jjoe64/graphview/GraphView;->getGridLabelRenderer()Lcom/jjoe64/graphview/GridLabelRenderer;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/jjoe64/graphview/GridLabelRenderer;->setLabelFormatter(Lcom/jjoe64/graphview/LabelFormatter;)V

    .line 188
    const/16 v1, 0x4b

    aput-boolean v5, v0, v1

    return-void
.end method

.method private updateTotalMonth(Ljava/lang/String;)V
    .locals 11

    .prologue
    const/4 v10, 0x1

    invoke-static {}, Lluankevinferreira/expenses/MainActivity;->$jacocoInit()[Z

    move-result-object v6

    .line 191
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 193
    .local v1, "expenses":Ljava/util/List;, "Ljava/util/List<Lluankevinferreira/expenses/domain/Expense;>;"
    const/4 v5, 0x0

    const/16 v4, 0x4c

    const/4 v7, 0x1

    :try_start_0
    aput-boolean v7, v6, v4

    .line 195
    new-instance v0, Lluankevinferreira/expenses/dao/ExpenseDAO;

    invoke-virtual {p0}, Lluankevinferreira/expenses/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Lluankevinferreira/expenses/dao/ExpenseDAO;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "expenseDAO":Lluankevinferreira/expenses/dao/ExpenseDAO;
    const/16 v4, 0x4d

    const/4 v5, 0x1

    :try_start_1
    aput-boolean v5, v6, v4

    .line 196
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v4, p1}, Lluankevinferreira/expenses/dao/ExpenseDAO;->select(Ljava/util/Date;Ljava/lang/String;)Ljava/util/List;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 200
    if-nez v0, :cond_0

    const/16 v4, 0x4e

    aput-boolean v10, v6, v4

    .line 204
    .end local v0    # "expenseDAO":Lluankevinferreira/expenses/dao/ExpenseDAO;
    :goto_0
    const-wide/16 v2, 0x0

    const/16 v4, 0x59

    aput-boolean v10, v6, v4

    .line 205
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/16 v4, 0x5a

    aput-boolean v10, v6, v4

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lluankevinferreira/expenses/domain/Expense;

    const/16 v7, 0x5b

    aput-boolean v10, v6, v7

    .line 206
    invoke-virtual {v4}, Lluankevinferreira/expenses/domain/Expense;->getValue()D

    move-result-wide v8

    add-double/2addr v2, v8

    .line 207
    .local v2, "total":D
    const/16 v4, 0x5c

    aput-boolean v10, v6, v4

    goto :goto_1

    .line 200
    .end local v2    # "total":D
    .restart local v0    # "expenseDAO":Lluankevinferreira/expenses/dao/ExpenseDAO;
    :cond_0
    const/16 v4, 0x4f

    aput-boolean v10, v6, v4

    .line 201
    invoke-virtual {v0}, Lluankevinferreira/expenses/dao/ExpenseDAO;->close()V

    const/16 v4, 0x50

    aput-boolean v10, v6, v4

    goto :goto_0

    .line 197
    .end local v0    # "expenseDAO":Lluankevinferreira/expenses/dao/ExpenseDAO;
    :catch_0
    move-exception v4

    move-object v0, v5

    :goto_2
    const/16 v5, 0x51

    const/4 v7, 0x1

    :try_start_2
    aput-boolean v7, v6, v5

    .line 198
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 200
    if-nez v0, :cond_1

    const/16 v4, 0x52

    aput-boolean v10, v6, v4

    goto :goto_0

    :cond_1
    const/16 v4, 0x53

    aput-boolean v10, v6, v4

    .line 201
    invoke-virtual {v0}, Lluankevinferreira/expenses/dao/ExpenseDAO;->close()V

    const/16 v4, 0x54

    aput-boolean v10, v6, v4

    goto :goto_0

    .line 200
    :catchall_0
    move-exception v4

    move-object v0, v5

    :goto_3
    if-nez v0, :cond_2

    const/16 v5, 0x55

    aput-boolean v10, v6, v5

    .line 202
    :goto_4
    const/16 v5, 0x58

    aput-boolean v10, v6, v5

    throw v4

    .line 200
    :cond_2
    const/16 v5, 0x56

    aput-boolean v10, v6, v5

    .line 201
    invoke-virtual {v0}, Lluankevinferreira/expenses/dao/ExpenseDAO;->close()V

    const/16 v5, 0x57

    aput-boolean v10, v6, v5

    goto :goto_4

    .line 209
    :cond_3
    iget-object v4, p0, Lluankevinferreira/expenses/MainActivity;->totalMonth:Landroid/widget/Button;

    iget-object v5, p0, Lluankevinferreira/expenses/MainActivity;->formatter:Ljava/text/DecimalFormat;

    invoke-virtual {v5, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 210
    const/16 v4, 0x5d

    aput-boolean v10, v6, v4

    return-void

    .line 200
    :catchall_1
    move-exception v4

    goto :goto_3

    .line 197
    .restart local v0    # "expenseDAO":Lluankevinferreira/expenses/dao/ExpenseDAO;
    :catch_1
    move-exception v4

    goto :goto_2
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lluankevinferreira/expenses/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 150
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v1, 0x32

    aput-boolean v6, v0, v1

    .line 152
    sget-object v1, Lluankevinferreira/expenses/enumeration/CodeIntentType;->REQUEST_NEW_EXPENSE:Lluankevinferreira/expenses/enumeration/CodeIntentType;

    invoke-virtual {v1}, Lluankevinferreira/expenses/enumeration/CodeIntentType;->getCode()I

    move-result v1

    if-ne p1, v1, :cond_1

    const/16 v1, 0x33

    aput-boolean v6, v0, v1

    .line 153
    iget-object v1, p0, Lluankevinferreira/expenses/MainActivity;->fab:Landroid/support/design/widget/FloatingActionButton;

    iget-object v2, p0, Lluankevinferreira/expenses/MainActivity;->rotateBackward:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/support/design/widget/FloatingActionButton;->startAnimation(Landroid/view/animation/Animation;)V

    const/16 v1, 0x34

    aput-boolean v6, v0, v1

    .line 154
    iget-object v1, p0, Lluankevinferreira/expenses/MainActivity;->fab:Landroid/support/design/widget/FloatingActionButton;

    new-instance v2, Lluankevinferreira/expenses/MainActivity$2;

    invoke-direct {v2, p0}, Lluankevinferreira/expenses/MainActivity$2;-><init>(Lluankevinferreira/expenses/MainActivity;)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v1, v2, v4, v5}, Landroid/support/design/widget/FloatingActionButton;->postDelayed(Ljava/lang/Runnable;J)Z

    const/16 v1, 0x35

    aput-boolean v6, v0, v1

    .line 160
    sget-object v1, Lluankevinferreira/expenses/enumeration/CodeIntentType;->STATUS_OK:Lluankevinferreira/expenses/enumeration/CodeIntentType;

    invoke-virtual {v1}, Lluankevinferreira/expenses/enumeration/CodeIntentType;->getCode()I

    move-result v1

    if-eq p2, v1, :cond_0

    const/16 v1, 0x36

    aput-boolean v6, v0, v1

    .line 170
    :goto_0
    const/16 v1, 0x40

    aput-boolean v6, v0, v1

    return-void

    .line 160
    :cond_0
    const/16 v1, 0x37

    aput-boolean v6, v0, v1

    .line 161
    iget-object v1, p0, Lluankevinferreira/expenses/MainActivity;->series:Lcom/jjoe64/graphview/series/LineGraphSeries;

    iget-object v2, p0, Lluankevinferreira/expenses/MainActivity;->graphicUtils:Lluankevinferreira/expenses/util/GraphicUtils;

    invoke-virtual {p0}, Lluankevinferreira/expenses/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "* ALL *"

    invoke-virtual {v2, v3, v4}, Lluankevinferreira/expenses/util/GraphicUtils;->getDataPoints(Landroid/content/Context;Ljava/lang/String;)[Lcom/jjoe64/graphview/series/DataPoint;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jjoe64/graphview/series/LineGraphSeries;->resetData([Lcom/jjoe64/graphview/series/DataPointInterface;)V

    const/16 v1, 0x38

    aput-boolean v6, v0, v1

    .line 162
    invoke-virtual {p0}, Lluankevinferreira/expenses/MainActivity;->recreate()V

    const/16 v1, 0x39

    aput-boolean v6, v0, v1

    goto :goto_0

    .line 164
    :cond_1
    sget-object v1, Lluankevinferreira/expenses/enumeration/CodeIntentType;->REQUEST_DETAIL_EXPENSES:Lluankevinferreira/expenses/enumeration/CodeIntentType;

    invoke-virtual {v1}, Lluankevinferreira/expenses/enumeration/CodeIntentType;->getCode()I

    move-result v1

    if-eq p1, v1, :cond_2

    const/16 v1, 0x3a

    aput-boolean v6, v0, v1

    goto :goto_0

    :cond_2
    const/16 v1, 0x3b

    aput-boolean v6, v0, v1

    .line 165
    sget-object v1, Lluankevinferreira/expenses/enumeration/CodeIntentType;->STATUS_OK:Lluankevinferreira/expenses/enumeration/CodeIntentType;

    invoke-virtual {v1}, Lluankevinferreira/expenses/enumeration/CodeIntentType;->getCode()I

    move-result v1

    if-eq p2, v1, :cond_3

    const/16 v1, 0x3c

    aput-boolean v6, v0, v1

    goto :goto_0

    :cond_3
    const/16 v1, 0x3d

    aput-boolean v6, v0, v1

    .line 166
    iget-object v1, p0, Lluankevinferreira/expenses/MainActivity;->series:Lcom/jjoe64/graphview/series/LineGraphSeries;

    iget-object v2, p0, Lluankevinferreira/expenses/MainActivity;->graphicUtils:Lluankevinferreira/expenses/util/GraphicUtils;

    invoke-virtual {p0}, Lluankevinferreira/expenses/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "* ALL *"

    invoke-virtual {v2, v3, v4}, Lluankevinferreira/expenses/util/GraphicUtils;->getDataPoints(Landroid/content/Context;Ljava/lang/String;)[Lcom/jjoe64/graphview/series/DataPoint;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jjoe64/graphview/series/LineGraphSeries;->resetData([Lcom/jjoe64/graphview/series/DataPointInterface;)V

    const/16 v1, 0x3e

    aput-boolean v6, v0, v1

    .line 167
    invoke-virtual {p0}, Lluankevinferreira/expenses/MainActivity;->recreate()V

    const/16 v1, 0x3f

    aput-boolean v6, v0, v1

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lluankevinferreira/expenses/MainActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 129
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 131
    .local v0, "id":I
    const v2, 0x7f0f007f

    if-ne v0, v2, :cond_0

    const/16 v2, 0x28

    aput-boolean v5, v1, v2

    .line 132
    iget-object v2, p0, Lluankevinferreira/expenses/MainActivity;->fab:Landroid/support/design/widget/FloatingActionButton;

    iget-object v3, p0, Lluankevinferreira/expenses/MainActivity;->rotateForward:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/support/design/widget/FloatingActionButton;->startAnimation(Landroid/view/animation/Animation;)V

    const/16 v2, 0x29

    aput-boolean v5, v1, v2

    .line 133
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lluankevinferreira/expenses/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lluankevinferreira/expenses/ExpenseActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v3, 0x2a

    aput-boolean v5, v1, v3

    .line 134
    iget-object v3, p0, Lluankevinferreira/expenses/MainActivity;->fab:Landroid/support/design/widget/FloatingActionButton;

    new-instance v4, Lluankevinferreira/expenses/MainActivity$1;

    invoke-direct {v4, p0, v2}, Lluankevinferreira/expenses/MainActivity$1;-><init>(Lluankevinferreira/expenses/MainActivity;Landroid/content/Intent;)V

    const-wide/16 v6, 0x12c

    invoke-virtual {v3, v4, v6, v7}, Landroid/support/design/widget/FloatingActionButton;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 141
    const/16 v2, 0x2b

    aput-boolean v5, v1, v2

    .line 146
    :goto_0
    const/16 v2, 0x31

    aput-boolean v5, v1, v2

    return-void

    .line 141
    :cond_0
    const v2, 0x7f0f0081

    if-eq v0, v2, :cond_1

    const/16 v2, 0x2c

    aput-boolean v5, v1, v2

    goto :goto_0

    :cond_1
    const/16 v2, 0x2d

    aput-boolean v5, v1, v2

    .line 142
    iget-object v2, p0, Lluankevinferreira/expenses/MainActivity;->totalMonth:Landroid/widget/Button;

    iget-object v3, p0, Lluankevinferreira/expenses/MainActivity;->clickAlpha:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    const/16 v2, 0x2e

    aput-boolean v5, v1, v2

    .line 143
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lluankevinferreira/expenses/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lluankevinferreira/expenses/HistoryActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v3, 0x2f

    aput-boolean v5, v1, v3

    .line 144
    sget-object v3, Lluankevinferreira/expenses/enumeration/CodeIntentType;->REQUEST_DETAIL_EXPENSES:Lluankevinferreira/expenses/enumeration/CodeIntentType;

    invoke-virtual {v3}, Lluankevinferreira/expenses/enumeration/CodeIntentType;->getCode()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lluankevinferreira/expenses/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    const/16 v2, 0x30

    aput-boolean v5, v1, v2

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lluankevinferreira/expenses/MainActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 61
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    aput-boolean v3, v1, v3

    .line 62
    const v0, 0x7f04001c

    invoke-virtual {p0, v0}, Lluankevinferreira/expenses/MainActivity;->setContentView(I)V

    const/4 v0, 0x2

    aput-boolean v3, v1, v0

    .line 63
    const v0, 0x7f0f007e

    invoke-virtual {p0, v0}, Lluankevinferreira/expenses/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lluankevinferreira/expenses/MainActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    const/4 v0, 0x3

    aput-boolean v3, v1, v0

    .line 66
    invoke-virtual {p0}, Lluankevinferreira/expenses/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lluankevinferreira/expenses/AnalyticsApplication;

    const/4 v2, 0x4

    aput-boolean v3, v1, v2

    .line 67
    invoke-virtual {v0}, Lluankevinferreira/expenses/AnalyticsApplication;->getDefaultTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    iput-object v0, p0, Lluankevinferreira/expenses/MainActivity;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    const/4 v0, 0x5

    aput-boolean v3, v1, v0

    .line 69
    new-instance v0, Ljava/text/DecimalFormat;

    const v2, 0x7f08003c

    invoke-virtual {p0, v2}, Lluankevinferreira/expenses/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lluankevinferreira/expenses/MainActivity;->formatter:Ljava/text/DecimalFormat;

    const/4 v0, 0x6

    aput-boolean v3, v1, v0

    .line 71
    const v0, 0x7f0f0081

    invoke-virtual {p0, v0}, Lluankevinferreira/expenses/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lluankevinferreira/expenses/MainActivity;->totalMonth:Landroid/widget/Button;

    .line 72
    iget-object v0, p0, Lluankevinferreira/expenses/MainActivity;->totalMonth:Landroid/widget/Button;

    if-nez v0, :cond_0

    const/4 v0, 0x7

    aput-boolean v3, v1, v0

    .line 75
    :goto_0
    new-instance v0, Lluankevinferreira/expenses/util/GraphicUtils;

    invoke-direct {v0}, Lluankevinferreira/expenses/util/GraphicUtils;-><init>()V

    iput-object v0, p0, Lluankevinferreira/expenses/MainActivity;->graphicUtils:Lluankevinferreira/expenses/util/GraphicUtils;

    const/16 v0, 0xa

    aput-boolean v3, v1, v0

    .line 76
    const v0, 0x7f0f0082

    invoke-virtual {p0, v0}, Lluankevinferreira/expenses/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jjoe64/graphview/GraphView;

    iput-object v0, p0, Lluankevinferreira/expenses/MainActivity;->graph:Lcom/jjoe64/graphview/GraphView;

    .line 77
    iget-object v0, p0, Lluankevinferreira/expenses/MainActivity;->graph:Lcom/jjoe64/graphview/GraphView;

    if-nez v0, :cond_1

    const/16 v0, 0xb

    aput-boolean v3, v1, v0

    .line 81
    :goto_1
    invoke-virtual {p0}, Lluankevinferreira/expenses/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f050013

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lluankevinferreira/expenses/MainActivity;->rotateForward:Landroid/view/animation/Animation;

    const/16 v0, 0xe

    aput-boolean v3, v1, v0

    .line 82
    invoke-virtual {p0}, Lluankevinferreira/expenses/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f050012

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lluankevinferreira/expenses/MainActivity;->rotateBackward:Landroid/view/animation/Animation;

    const/16 v0, 0xf

    aput-boolean v3, v1, v0

    .line 83
    invoke-virtual {p0}, Lluankevinferreira/expenses/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f05000a

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lluankevinferreira/expenses/MainActivity;->clickAlpha:Landroid/view/animation/Animation;

    const/16 v0, 0x10

    aput-boolean v3, v1, v0

    .line 85
    const v0, 0x7f0f007f

    invoke-virtual {p0, v0}, Lluankevinferreira/expenses/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/FloatingActionButton;

    iput-object v0, p0, Lluankevinferreira/expenses/MainActivity;->fab:Landroid/support/design/widget/FloatingActionButton;

    .line 86
    iget-object v0, p0, Lluankevinferreira/expenses/MainActivity;->fab:Landroid/support/design/widget/FloatingActionButton;

    if-nez v0, :cond_2

    const/16 v0, 0x11

    aput-boolean v3, v1, v0

    .line 88
    :goto_2
    const/16 v0, 0x14

    aput-boolean v3, v1, v0

    return-void

    .line 72
    :cond_0
    const/16 v0, 0x8

    aput-boolean v3, v1, v0

    .line 73
    iget-object v0, p0, Lluankevinferreira/expenses/MainActivity;->totalMonth:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0x9

    aput-boolean v3, v1, v0

    goto :goto_0

    .line 77
    :cond_1
    const/16 v0, 0xc

    aput-boolean v3, v1, v0

    .line 78
    invoke-direct {p0}, Lluankevinferreira/expenses/MainActivity;->configGraphic()V

    const/16 v0, 0xd

    aput-boolean v3, v1, v0

    goto :goto_1

    .line 86
    :cond_2
    const/16 v0, 0x12

    aput-boolean v3, v1, v0

    .line 87
    iget-object v0, p0, Lluankevinferreira/expenses/MainActivity;->fab:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0, p0}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0x13

    aput-boolean v3, v1, v0

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lluankevinferreira/expenses/MainActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 102
    invoke-virtual {p0}, Lluankevinferreira/expenses/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v3, 0x7f100001

    invoke-virtual {v1, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/16 v1, 0x1a

    aput-boolean v7, v2, v1

    .line 104
    new-instance v1, Lluankevinferreira/expenses/dao/ExpenseDAO;

    invoke-virtual {p0}, Lluankevinferreira/expenses/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lluankevinferreira/expenses/dao/ExpenseDAO;-><init>(Landroid/content/Context;)V

    const/16 v3, 0x1b

    aput-boolean v7, v2, v3

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v3, 0x1c

    const/4 v4, 0x1

    :try_start_0
    aput-boolean v4, v2, v3

    .line 108
    invoke-virtual {v1}, Lluankevinferreira/expenses/dao/ExpenseDAO;->selectTypesExpenses()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 111
    .local v0, "types":Ljava/util/List;, "Ljava/util/List<Lluankevinferreira/expenses/domain/Type;>;"
    const/16 v1, 0x1d

    aput-boolean v7, v2, v1

    .line 113
    .end local v0    # "types":Ljava/util/List;, "Ljava/util/List<Lluankevinferreira/expenses/domain/Type;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/16 v1, 0x20

    aput-boolean v7, v2, v1

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lluankevinferreira/expenses/domain/Type;

    const/16 v4, 0x21

    aput-boolean v7, v2, v4

    .line 114
    const v4, 0x7f0f00a0

    invoke-virtual {v1}, Lluankevinferreira/expenses/domain/Type;->getId()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v1}, Lluankevinferreira/expenses/domain/Type;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v5, v6, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 115
    const/16 v1, 0x22

    aput-boolean v7, v2, v1

    goto :goto_1

    .line 109
    :catch_0
    move-exception v1

    const/16 v3, 0x1e

    aput-boolean v7, v2, v3

    .line 110
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v1, 0x1f

    aput-boolean v7, v2, v1

    goto :goto_0

    .line 116
    :cond_0
    const/16 v1, 0x23

    aput-boolean v7, v2, v1

    return v7
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lluankevinferreira/expenses/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 121
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x24

    aput-boolean v5, v0, v2

    .line 122
    invoke-direct {p0, v1}, Lluankevinferreira/expenses/MainActivity;->updateTotalMonth(Ljava/lang/String;)V

    const/16 v2, 0x25

    aput-boolean v5, v0, v2

    .line 123
    iget-object v2, p0, Lluankevinferreira/expenses/MainActivity;->series:Lcom/jjoe64/graphview/series/LineGraphSeries;

    iget-object v3, p0, Lluankevinferreira/expenses/MainActivity;->graphicUtils:Lluankevinferreira/expenses/util/GraphicUtils;

    invoke-virtual {p0}, Lluankevinferreira/expenses/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lluankevinferreira/expenses/util/GraphicUtils;->getDataPoints(Landroid/content/Context;Ljava/lang/String;)[Lcom/jjoe64/graphview/series/DataPoint;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/jjoe64/graphview/series/LineGraphSeries;->resetData([Lcom/jjoe64/graphview/series/DataPointInterface;)V

    const/16 v1, 0x26

    aput-boolean v5, v0, v1

    .line 124
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    const/16 v2, 0x27

    aput-boolean v5, v0, v2

    return v1
.end method

.method protected onPause()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    invoke-static {}, Lluankevinferreira/expenses/MainActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 213
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 215
    const-string v1, "jacoco"

    const/16 v3, 0x5e

    aput-boolean v9, v2, v3

    .line 218
    const-string v3, "StorageSt"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x5f

    aput-boolean v9, v2, v3

    .line 219
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "coverage.exec"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x60

    aput-boolean v9, v2, v4

    .line 220
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x61

    const/4 v5, 0x1

    :try_start_0
    aput-boolean v5, v2, v3

    .line 222
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    const/16 v3, 0x62

    const/4 v5, 0x1

    aput-boolean v5, v2, v3

    .line 223
    const-string v3, "com.vladium.emma.rt.RT"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 224
    .local v0, "emmaRTClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "dumpCoverageData"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const/16 v7, 0x63

    const/4 v8, 0x1

    aput-boolean v8, v2, v7

    .line 225
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/16 v6, 0x64

    const/4 v7, 0x1

    aput-boolean v7, v2, v6

    .line 224
    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/16 v5, 0x65

    const/4 v6, 0x1

    aput-boolean v6, v2, v5

    .line 227
    const/4 v5, 0x0

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const/4 v4, 0x1

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v4

    const/4 v4, 0x2

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x66

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    .line 228
    const-string v3, "generateCoverageReport: ok"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    const/16 v1, 0x69

    aput-boolean v9, v2, v1

    return-void

    .line 229
    :catch_0
    move-exception v1

    const/16 v3, 0x67

    aput-boolean v9, v2, v3

    .line 230
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Is emma jar on classpath?"

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v1, 0x68

    aput-boolean v9, v2, v1

    throw v3
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lluankevinferreira/expenses/MainActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 92
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    const/16 v1, 0x15

    aput-boolean v4, v0, v1

    .line 93
    const-string v1, "* ALL *"

    invoke-direct {p0, v1}, Lluankevinferreira/expenses/MainActivity;->updateTotalMonth(Ljava/lang/String;)V

    const/16 v1, 0x16

    aput-boolean v4, v0, v1

    .line 95
    const-string v1, "MainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting screen name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x17

    aput-boolean v4, v0, v1

    .line 96
    iget-object v1, p0, Lluankevinferreira/expenses/MainActivity;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Image~"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    const/16 v1, 0x18

    aput-boolean v4, v0, v1

    .line 97
    iget-object v1, p0, Lluankevinferreira/expenses/MainActivity;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v2, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;

    invoke-direct {v2}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;->build()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 98
    const/16 v1, 0x19

    aput-boolean v4, v0, v1

    return-void
.end method
