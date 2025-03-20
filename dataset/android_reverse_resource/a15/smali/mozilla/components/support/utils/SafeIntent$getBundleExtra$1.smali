.class final Lmozilla/components/support/utils/SafeIntent$getBundleExtra$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SafeIntent.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmozilla/components/support/utils/SafeIntent;->getBundleExtra(Ljava/lang/String;)Lmozilla/components/support/utils/SafeBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1",
        "<",
        "Landroid/content/Intent;",
        "Lmozilla/components/support/utils/SafeBundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $name:Ljava/lang/String;

.field final synthetic this$0:Lmozilla/components/support/utils/SafeIntent;


# direct methods
.method constructor <init>(Lmozilla/components/support/utils/SafeIntent;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lmozilla/components/support/utils/SafeIntent$getBundleExtra$1;->this$0:Lmozilla/components/support/utils/SafeIntent;

    iput-object p2, p0, Lmozilla/components/support/utils/SafeIntent$getBundleExtra$1;->$name:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    check-cast p1, Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lmozilla/components/support/utils/SafeIntent$getBundleExtra$1;->invoke(Landroid/content/Intent;)Lmozilla/components/support/utils/SafeBundle;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Landroid/content/Intent;)Lmozilla/components/support/utils/SafeBundle;
    .locals 3
    .param p1, "$receiver"    # Landroid/content/Intent;

    .prologue
    const-string v1, "$receiver"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    iget-object v1, p0, Lmozilla/components/support/utils/SafeIntent$getBundleExtra$1;->this$0:Lmozilla/components/support/utils/SafeIntent;

    invoke-virtual {v1}, Lmozilla/components/support/utils/SafeIntent;->getUnsafe()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lmozilla/components/support/utils/SafeIntent$getBundleExtra$1;->$name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 63
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 64
    new-instance v1, Lmozilla/components/support/utils/SafeBundle;

    invoke-direct {v1, v0}, Lmozilla/components/support/utils/SafeBundle;-><init>(Landroid/os/Bundle;)V

    .line 63
    :goto_0
    return-object v1

    .line 66
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
