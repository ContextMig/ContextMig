.class final Lmozilla/components/support/utils/SafeIntent$getBooleanExtra$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SafeIntent.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmozilla/components/support/utils/SafeIntent;->getBooleanExtra(Ljava/lang/String;Z)Z
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $defaultValue:Z

.field final synthetic $name:Ljava/lang/String;

.field final synthetic this$0:Lmozilla/components/support/utils/SafeIntent;


# direct methods
.method constructor <init>(Lmozilla/components/support/utils/SafeIntent;Ljava/lang/String;Z)V
    .locals 1

    iput-object p1, p0, Lmozilla/components/support/utils/SafeIntent$getBooleanExtra$1;->this$0:Lmozilla/components/support/utils/SafeIntent;

    iput-object p2, p0, Lmozilla/components/support/utils/SafeIntent$getBooleanExtra$1;->$name:Ljava/lang/String;

    iput-boolean p3, p0, Lmozilla/components/support/utils/SafeIntent$getBooleanExtra$1;->$defaultValue:Z

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

    invoke-virtual {p0, p1}, Lmozilla/components/support/utils/SafeIntent$getBooleanExtra$1;->invoke(Landroid/content/Intent;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Landroid/content/Intent;)Z
    .locals 3
    .param p1, "$receiver"    # Landroid/content/Intent;

    .prologue
    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lmozilla/components/support/utils/SafeIntent$getBooleanExtra$1;->this$0:Lmozilla/components/support/utils/SafeIntent;

    invoke-virtual {v0}, Lmozilla/components/support/utils/SafeIntent;->getUnsafe()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lmozilla/components/support/utils/SafeIntent$getBooleanExtra$1;->$name:Ljava/lang/String;

    iget-boolean v2, p0, Lmozilla/components/support/utils/SafeIntent$getBooleanExtra$1;->$defaultValue:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
