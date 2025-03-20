.class Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity$1;
.super Ljava/lang/Object;
.source "SavingsActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field progress:I

.field final synthetic this$0:Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x3a30e902f35e330aL    # 2.134367469445574E-28

    const-string v2, "com/kvannli/simonkvannli/dailybudget/SavingsActivity$1"

    const/4 v3, 0x7

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity$1;->$jacocoInit()[Z

    move-result-object v0

    .line 46
    iput-object p1, p0, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity$1;->this$0:Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput v2, p0, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity$1;->progress:I

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity$1;->$jacocoInit()[Z

    move-result-object v0

    .line 51
    iput p2, p0, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity$1;->progress:I

    .line 52
    iget-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity$1;->this$0:Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;

    iget-boolean v1, v1, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;->updateText:Z

    if-nez v1, :cond_0

    aput-boolean v6, v0, v6

    .line 56
    :goto_0
    const/4 v1, 0x4

    aput-boolean v6, v0, v1

    return-void

    .line 53
    :cond_0
    iget v1, p0, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity$1;->progress:I

    int-to-double v2, v1

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    div-double/2addr v2, v4

    const/4 v1, 0x2

    aput-boolean v6, v0, v1

    .line 54
    iget-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity$1;->this$0:Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;

    invoke-static {v1}, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;->access$000(Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;)Landroid/widget/EditText;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v1, v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    const/4 v1, 0x3

    aput-boolean v6, v0, v1

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity$1;->$jacocoInit()[Z

    move-result-object v0

    .line 60
    iget-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity$1;->this$0:Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;

    iput-boolean v2, v1, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;->updateText:Z

    .line 61
    const/4 v1, 0x5

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity$1;->$jacocoInit()[Z

    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity$1;->this$0:Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;->updateText:Z

    .line 66
    const/4 v1, 0x6

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
