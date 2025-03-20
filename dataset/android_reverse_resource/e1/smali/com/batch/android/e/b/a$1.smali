.class Lcom/batch/android/e/b/a$1;
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
    .line 55
    iput-object p1, p0, Lcom/batch/android/e/b/a$1;->b:Lcom/batch/android/e/b/a;

    iput-object p2, p0, Lcom/batch/android/e/b/a$1;->a:Lcom/batch/android/e/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 59
    invoke-static {}, Lcom/batch/android/f/d;->a()Lcom/batch/android/f/d;

    move-result-object v0

    iget-object v1, p0, Lcom/batch/android/e/b/a$1;->a:Lcom/batch/android/e/c/a;

    invoke-virtual {v0, v1}, Lcom/batch/android/f/d;->c(Lcom/batch/android/e/c/c;)V

    .line 60
    return-void
.end method
