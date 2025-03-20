.class Lcom/batch/android/e/d/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/batch/android/e/d/d;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/batch/android/e/d/d;


# direct methods
.method constructor <init>(Lcom/batch/android/e/d/d;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/batch/android/e/d/d$1;->a:Lcom/batch/android/e/d/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/batch/android/e/d/d$1;->a:Lcom/batch/android/e/d/d;

    invoke-static {v0}, Lcom/batch/android/e/d/d;->a(Lcom/batch/android/e/d/d;)Lcom/batch/android/e/d/d$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/batch/android/e/d/d$1;->a:Lcom/batch/android/e/d/d;

    invoke-static {v0}, Lcom/batch/android/e/d/d;->a(Lcom/batch/android/e/d/d;)Lcom/batch/android/e/d/d$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/batch/android/e/d/d$a;->d()V

    .line 167
    :cond_0
    return-void
.end method
