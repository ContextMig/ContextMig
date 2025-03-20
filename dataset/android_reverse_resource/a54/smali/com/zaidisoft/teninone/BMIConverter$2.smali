.class Lcom/zaidisoft/teninone/BMIConverter$2;
.super Ljava/lang/Object;
.source "BMIConverter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zaidisoft/teninone/BMIConverter;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zaidisoft/teninone/BMIConverter;


# direct methods
.method constructor <init>(Lcom/zaidisoft/teninone/BMIConverter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/zaidisoft/teninone/BMIConverter;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/zaidisoft/teninone/BMIConverter$2;->this$0:Lcom/zaidisoft/teninone/BMIConverter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/zaidisoft/teninone/BMIConverter$2;->this$0:Lcom/zaidisoft/teninone/BMIConverter;

    iget-object v1, p0, Lcom/zaidisoft/teninone/BMIConverter$2;->this$0:Lcom/zaidisoft/teninone/BMIConverter;

    invoke-static {v1}, Lcom/zaidisoft/teninone/BMIConverter;->access$000(Lcom/zaidisoft/teninone/BMIConverter;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zaidisoft/teninone/BMIConverter;->computeBMI(I)V

    .line 83
    return-void
.end method
