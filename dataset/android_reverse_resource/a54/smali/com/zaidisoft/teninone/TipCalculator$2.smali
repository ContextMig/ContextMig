.class Lcom/zaidisoft/teninone/TipCalculator$2;
.super Ljava/lang/Object;
.source "TipCalculator.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zaidisoft/teninone/TipCalculator;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zaidisoft/teninone/TipCalculator;


# direct methods
.method constructor <init>(Lcom/zaidisoft/teninone/TipCalculator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/zaidisoft/teninone/TipCalculator;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/zaidisoft/teninone/TipCalculator$2;->this$0:Lcom/zaidisoft/teninone/TipCalculator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/zaidisoft/teninone/TipCalculator$2;->this$0:Lcom/zaidisoft/teninone/TipCalculator;

    invoke-virtual {v0}, Lcom/zaidisoft/teninone/TipCalculator;->calculateTipCalculator()V

    .line 67
    return-void
.end method
