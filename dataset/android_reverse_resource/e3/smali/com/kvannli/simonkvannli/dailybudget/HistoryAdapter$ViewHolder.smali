.class public Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "HistoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field public dateTextView:Landroid/widget/TextView;

.field public imageView:Landroid/widget/ImageView;

.field public textView:Landroid/widget/TextView;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter$ViewHolder;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x795bffc09e02d96dL    # 3.8775648248798073E276

    const-string v2, "com/kvannli/simonkvannli/dailybudget/HistoryAdapter$ViewHolder"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter$ViewHolder;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/HistoryAdapter$ViewHolder;->$jacocoInit()[Z

    move-result-object v0

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
