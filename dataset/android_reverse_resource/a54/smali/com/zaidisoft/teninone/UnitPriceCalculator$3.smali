.class Lcom/zaidisoft/teninone/UnitPriceCalculator$3;
.super Ljava/lang/Object;
.source "UnitPriceCalculator.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zaidisoft/teninone/UnitPriceCalculator;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zaidisoft/teninone/UnitPriceCalculator;


# direct methods
.method constructor <init>(Lcom/zaidisoft/teninone/UnitPriceCalculator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/zaidisoft/teninone/UnitPriceCalculator;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/zaidisoft/teninone/UnitPriceCalculator$3;->this$0:Lcom/zaidisoft/teninone/UnitPriceCalculator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/zaidisoft/teninone/UnitPriceCalculator$3;->this$0:Lcom/zaidisoft/teninone/UnitPriceCalculator;

    iget-object v1, p0, Lcom/zaidisoft/teninone/UnitPriceCalculator$3;->this$0:Lcom/zaidisoft/teninone/UnitPriceCalculator;

    invoke-static {v1}, Lcom/zaidisoft/teninone/UnitPriceCalculator;->access$000(Lcom/zaidisoft/teninone/UnitPriceCalculator;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zaidisoft/teninone/UnitPriceCalculator;->compareItems(I)V

    .line 109
    return-void
.end method
