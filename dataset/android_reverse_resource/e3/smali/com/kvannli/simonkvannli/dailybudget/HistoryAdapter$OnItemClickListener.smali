.class Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter$OnItemClickListener;
.super Ljava/lang/Object;
.source "HistoryAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnItemClickListener"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private mId:I

.field private mPosition:I

.field final synthetic this$0:Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter$OnItemClickListener;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x31de9918236bb0baL    # -2.345781647186318E68

    const-string v2, "com/kvannli/simonkvannli/dailybudget/HistoryAdapter$OnItemClickListener"

    const/4 v3, 0x6

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter$OnItemClickListener;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter;II)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter$OnItemClickListener;->$jacocoInit()[Z

    move-result-object v0

    .line 178
    iput-object p1, p0, Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter$OnItemClickListener;->this$0:Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    iput p2, p0, Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter$OnItemClickListener;->mPosition:I

    .line 180
    iput p3, p0, Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter$OnItemClickListener;->mId:I

    .line 181
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter$OnItemClickListener;->$jacocoInit()[Z

    move-result-object v1

    .line 185
    iget-object v2, p0, Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter$OnItemClickListener;->this$0:Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter;

    iget-object v0, v2, Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter;->activity:Landroid/content/Context;

    check-cast v0, Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity;

    .line 186
    .local v0, "act":Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity;
    iget v2, p0, Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter$OnItemClickListener;->mId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    aput-boolean v4, v1, v4

    .line 187
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "SHOW ALL"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v2, 0x2

    aput-boolean v4, v1, v2

    .line 188
    invoke-virtual {v0}, Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity;->fillListViewAll()V

    const/4 v2, 0x3

    aput-boolean v4, v1, v2

    .line 192
    :goto_0
    const/4 v2, 0x5

    aput-boolean v4, v1, v2

    return-void

    .line 190
    :cond_0
    iget v2, p0, Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter$OnItemClickListener;->mId:I

    invoke-virtual {v0, v2}, Lcom/kvannli/simonkvannli/dailybudget/HistoryActivity;->historyPressed(I)V

    const/4 v2, 0x4

    aput-boolean v4, v1, v2

    goto :goto_0
.end method
