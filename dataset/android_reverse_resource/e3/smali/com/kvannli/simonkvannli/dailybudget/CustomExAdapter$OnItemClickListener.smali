.class Lcom/kvannli/simonkvannli/dailybudget/CustomExAdapter$OnItemClickListener;
.super Ljava/lang/Object;
.source "CustomExAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kvannli/simonkvannli/dailybudget/CustomExAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnItemClickListener"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private mPosition:I

.field final synthetic this$0:Lcom/kvannli/simonkvannli/dailybudget/CustomExAdapter;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/kvannli/simonkvannli/dailybudget/CustomExAdapter$OnItemClickListener;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x531de368cac2d359L    # 2.435343141118984E92

    const-string v2, "com/kvannli/simonkvannli/dailybudget/CustomExAdapter$OnItemClickListener"

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/kvannli/simonkvannli/dailybudget/CustomExAdapter$OnItemClickListener;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/kvannli/simonkvannli/dailybudget/CustomExAdapter;I)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/CustomExAdapter$OnItemClickListener;->$jacocoInit()[Z

    move-result-object v0

    .line 130
    iput-object p1, p0, Lcom/kvannli/simonkvannli/dailybudget/CustomExAdapter$OnItemClickListener;->this$0:Lcom/kvannli/simonkvannli/dailybudget/CustomExAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput p2, p0, Lcom/kvannli/simonkvannli/dailybudget/CustomExAdapter$OnItemClickListener;->mPosition:I

    .line 132
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/CustomExAdapter$OnItemClickListener;->$jacocoInit()[Z

    move-result-object v1

    .line 138
    iget-object v0, p0, Lcom/kvannli/simonkvannli/dailybudget/CustomExAdapter$OnItemClickListener;->this$0:Lcom/kvannli/simonkvannli/dailybudget/CustomExAdapter;

    invoke-static {v0}, Lcom/kvannli/simonkvannli/dailybudget/CustomExAdapter;->access$000(Lcom/kvannli/simonkvannli/dailybudget/CustomExAdapter;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/kvannli/simonkvannli/dailybudget/expense_activity;

    aput-boolean v3, v1, v3

    .line 142
    iget v2, p0, Lcom/kvannli/simonkvannli/dailybudget/CustomExAdapter$OnItemClickListener;->mPosition:I

    invoke-virtual {v0, v2}, Lcom/kvannli/simonkvannli/dailybudget/expense_activity;->onItemClick(I)V

    .line 143
    const/4 v0, 0x2

    aput-boolean v3, v1, v0

    return-void
.end method
