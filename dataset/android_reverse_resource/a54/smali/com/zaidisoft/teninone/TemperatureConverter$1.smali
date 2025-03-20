.class Lcom/zaidisoft/teninone/TemperatureConverter$1;
.super Ljava/lang/Object;
.source "TemperatureConverter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zaidisoft/teninone/TemperatureConverter;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zaidisoft/teninone/TemperatureConverter;


# direct methods
.method constructor <init>(Lcom/zaidisoft/teninone/TemperatureConverter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/zaidisoft/teninone/TemperatureConverter;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/zaidisoft/teninone/TemperatureConverter$1;->this$0:Lcom/zaidisoft/teninone/TemperatureConverter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/zaidisoft/teninone/TemperatureConverter$1;->this$0:Lcom/zaidisoft/teninone/TemperatureConverter;

    invoke-virtual {v0}, Lcom/zaidisoft/teninone/TemperatureConverter;->resetConverter()V

    .line 59
    return-void
.end method
