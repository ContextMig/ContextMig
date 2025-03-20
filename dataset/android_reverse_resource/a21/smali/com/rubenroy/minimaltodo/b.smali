.class Lcom/rubenroy/minimaltodo/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/rubenroy/minimaltodo/AddToDoActivity;


# direct methods
.method constructor <init>(Lcom/rubenroy/minimaltodo/AddToDoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/rubenroy/minimaltodo/b;->a:Lcom/rubenroy/minimaltodo/AddToDoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/b;->a:Lcom/rubenroy/minimaltodo/AddToDoActivity;

    iget-object v1, p0, Lcom/rubenroy/minimaltodo/b;->a:Lcom/rubenroy/minimaltodo/AddToDoActivity;

    invoke-static {v1}, Lcom/rubenroy/minimaltodo/AddToDoActivity;->a(Lcom/rubenroy/minimaltodo/AddToDoActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rubenroy/minimaltodo/AddToDoActivity;->a(Landroid/widget/EditText;)V

    return-void
.end method
