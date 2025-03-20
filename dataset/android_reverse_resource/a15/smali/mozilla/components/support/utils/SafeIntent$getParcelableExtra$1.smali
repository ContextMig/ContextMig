.class final Lmozilla/components/support/utils/SafeIntent$getParcelableExtra$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SafeIntent.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmozilla/components/support/utils/SafeIntent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
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
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic $name:Ljava/lang/String;

.field final synthetic this$0:Lmozilla/components/support/utils/SafeIntent;


# direct methods
.method constructor <init>(Lmozilla/components/support/utils/SafeIntent;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lmozilla/components/support/utils/SafeIntent$getParcelableExtra$1;->this$0:Lmozilla/components/support/utils/SafeIntent;

    iput-object p2, p0, Lmozilla/components/support/utils/SafeIntent$getParcelableExtra$1;->$name:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroid/content/Intent;)Landroid/os/Parcelable;
    .locals 2
    .param p1, "$receiver"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")TT;"
        }
    .end annotation

    .prologue
    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lmozilla/components/support/utils/SafeIntent$getParcelableExtra$1;->this$0:Lmozilla/components/support/utils/SafeIntent;

    invoke-virtual {v0}, Lmozilla/components/support/utils/SafeIntent;->getUnsafe()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lmozilla/components/support/utils/SafeIntent$getParcelableExtra$1;->$name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type T"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    check-cast p1, Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lmozilla/components/support/utils/SafeIntent$getParcelableExtra$1;->invoke(Landroid/content/Intent;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method
