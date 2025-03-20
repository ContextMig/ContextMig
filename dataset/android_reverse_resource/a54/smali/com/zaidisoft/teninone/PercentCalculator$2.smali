.class Lcom/zaidisoft/teninone/PercentCalculator$2;
.super Ljava/lang/Object;
.source "PercentCalculator.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zaidisoft/teninone/PercentCalculator;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zaidisoft/teninone/PercentCalculator;


# direct methods
.method constructor <init>(Lcom/zaidisoft/teninone/PercentCalculator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/zaidisoft/teninone/PercentCalculator;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/zaidisoft/teninone/PercentCalculator$2;->this$0:Lcom/zaidisoft/teninone/PercentCalculator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/zaidisoft/teninone/PercentCalculator$2;->this$0:Lcom/zaidisoft/teninone/PercentCalculator;

    iget-object v1, p0, Lcom/zaidisoft/teninone/PercentCalculator$2;->this$0:Lcom/zaidisoft/teninone/PercentCalculator;

    invoke-static {v1}, Lcom/zaidisoft/teninone/PercentCalculator;->access$000(Lcom/zaidisoft/teninone/PercentCalculator;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zaidisoft/teninone/PercentCalculator;->resetCalculator(I)V

    .line 85
    return-void
.end method
