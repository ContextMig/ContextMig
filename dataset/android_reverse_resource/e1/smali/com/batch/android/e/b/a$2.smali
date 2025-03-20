.class Lcom/batch/android/e/b/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/batch/android/e/b/a;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/batch/android/e/c/a;

.field final synthetic b:Lcom/batch/android/e/b/a;


# direct methods
.method constructor <init>(Lcom/batch/android/e/b/a;Lcom/batch/android/e/c/a;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/batch/android/e/b/a$2;->b:Lcom/batch/android/e/b/a;

    iput-object p2, p0, Lcom/batch/android/e/b/a$2;->a:Lcom/batch/android/e/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 70
    invoke-static {}, Lcom/batch/android/f/d;->a()Lcom/batch/android/f/d;

    move-result-object v0

    iget-object v1, p0, Lcom/batch/android/e/b/a$2;->a:Lcom/batch/android/e/c/a;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/batch/android/f/d;->a(Lcom/batch/android/e/c/c;I)V

    .line 71
    invoke-static {}, Lcom/batch/android/f/d;->a()Lcom/batch/android/f/d;

    move-result-object v0

    iget-object v1, p0, Lcom/batch/android/e/b/a$2;->b:Lcom/batch/android/e/b/a;

    invoke-virtual {v1}, Lcom/batch/android/e/b/a;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/batch/android/e/b/a$2;->b:Lcom/batch/android/e/b/a;

    invoke-virtual {v2}, Lcom/batch/android/e/b/a;->b()Lcom/batch/android/BatchMessage;

    move-result-object v2

    iget-object v3, p0, Lcom/batch/android/e/b/a$2;->a:Lcom/batch/android/e/c/a;

    iget-object v3, v3, Lcom/batch/android/e/c/a;->c:Lcom/batch/android/e/c/b;

    invoke-virtual {v0, v1, v2, v3}, Lcom/batch/android/f/d;->a(Landroid/content/Context;Lcom/batch/android/BatchMessage;Lcom/batch/android/e/c/b;)V

    .line 72
    return-void
.end method
