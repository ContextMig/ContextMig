.class public final Lmozilla/components/support/utils/SafeBundle;
.super Ljava/lang/Object;
.source "SafeBundle.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmozilla/components/support/utils/SafeBundle$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lmozilla/components/support/utils/SafeBundle$Companion;

.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field private final bundle:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Lmozilla/components/support/utils/SafeBundle$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmozilla/components/support/utils/SafeBundle$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lmozilla/components/support/utils/SafeBundle;->Companion:Lmozilla/components/support/utils/SafeBundle$Companion;

    .line 45
    const-class v0, Lmozilla/components/support/utils/SafeBundle;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmozilla/components/support/utils/SafeBundle;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmozilla/components/support/utils/SafeBundle;->bundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const-string v2, "name"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    nop

    .line 34
    :try_start_0
    iget-object v2, p0, Lmozilla/components/support/utils/SafeBundle;->bundle:Landroid/os/Bundle;

    invoke-virtual {v2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 40
    :goto_0
    return-object v1

    .line 35
    :catch_0
    move-exception v0

    .line 36
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    sget-object v2, Lmozilla/components/support/utils/SafeBundle;->LOGTAG:Ljava/lang/String;

    const-string v3, "Couldn\'t get bundle items: OOM. Malformed?"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 38
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v0

    .line 39
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v2, Lmozilla/components/support/utils/SafeBundle;->LOGTAG:Ljava/lang/String;

    const-string v3, "Couldn\'t get bundle items."

    check-cast v0, Ljava/lang/Throwable;

    .end local v0    # "e":Ljava/lang/RuntimeException;
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const-string v2, "name"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    nop

    .line 22
    :try_start_0
    iget-object v2, p0, Lmozilla/components/support/utils/SafeBundle;->bundle:Landroid/os/Bundle;

    invoke-virtual {v2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 28
    :goto_0
    return-object v1

    .line 23
    :catch_0
    move-exception v0

    .line 24
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    sget-object v2, Lmozilla/components/support/utils/SafeBundle;->LOGTAG:Ljava/lang/String;

    const-string v3, "Couldn\'t get bundle items: OOM. Malformed?"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 26
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v0

    .line 27
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v2, Lmozilla/components/support/utils/SafeBundle;->LOGTAG:Ljava/lang/String;

    const-string v3, "Couldn\'t get bundle items."

    check-cast v0, Ljava/lang/Throwable;

    .end local v0    # "e":Ljava/lang/RuntimeException;
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
