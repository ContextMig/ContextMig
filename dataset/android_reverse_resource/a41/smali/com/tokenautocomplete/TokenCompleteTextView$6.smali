.class Lcom/tokenautocomplete/TokenCompleteTextView$6;
.super Ljava/lang/Object;
.source "TokenCompleteTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tokenautocomplete/TokenCompleteTextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tokenautocomplete/TokenCompleteTextView;


# direct methods
.method constructor <init>(Lcom/tokenautocomplete/TokenCompleteTextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tokenautocomplete/TokenCompleteTextView;

    .prologue
    .line 1418
    .local p0, "this":Lcom/tokenautocomplete/TokenCompleteTextView$6;, "Lcom/tokenautocomplete/TokenCompleteTextView$6;"
    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$6;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1422
    .local p0, "this":Lcom/tokenautocomplete/TokenCompleteTextView$6;, "Lcom/tokenautocomplete/TokenCompleteTextView$6;"
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView$6;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$6;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-virtual {v1}, Lcom/tokenautocomplete/TokenCompleteTextView;->isFocused()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tokenautocomplete/TokenCompleteTextView;->performCollapse(Z)V

    .line 1423
    return-void
.end method
