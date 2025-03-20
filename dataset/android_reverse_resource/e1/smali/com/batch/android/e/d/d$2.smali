.class Lcom/batch/android/e/d/d$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/batch/android/e/d/d;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/batch/android/e/c/b;

.field final synthetic c:Lcom/batch/android/e/d/d;


# direct methods
.method constructor <init>(Lcom/batch/android/e/d/d;ILcom/batch/android/e/c/b;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lcom/batch/android/e/d/d$2;->c:Lcom/batch/android/e/d/d;

    iput p2, p0, Lcom/batch/android/e/d/d$2;->a:I

    iput-object p3, p0, Lcom/batch/android/e/d/d$2;->b:Lcom/batch/android/e/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/batch/android/e/d/d$2;->c:Lcom/batch/android/e/d/d;

    invoke-static {v0}, Lcom/batch/android/e/d/d;->a(Lcom/batch/android/e/d/d;)Lcom/batch/android/e/d/d$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/batch/android/e/d/d$2;->c:Lcom/batch/android/e/d/d;

    invoke-static {v0}, Lcom/batch/android/e/d/d;->a(Lcom/batch/android/e/d/d;)Lcom/batch/android/e/d/d$a;

    move-result-object v0

    iget v1, p0, Lcom/batch/android/e/d/d$2;->a:I

    iget-object v2, p0, Lcom/batch/android/e/d/d$2;->b:Lcom/batch/android/e/c/b;

    invoke-interface {v0, v1, v2}, Lcom/batch/android/e/d/d$a;->a(ILcom/batch/android/e/c/b;)V

    .line 247
    :cond_0
    return-void
.end method
