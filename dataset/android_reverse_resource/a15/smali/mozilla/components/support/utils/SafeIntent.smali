.class public final Lmozilla/components/support/utils/SafeIntent;
.super Ljava/lang/Object;
.source "SafeIntent.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmozilla/components/support/utils/SafeIntent$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lmozilla/components/support/utils/SafeIntent$Companion;

.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field private final unsafe:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Lmozilla/components/support/utils/SafeIntent$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmozilla/components/support/utils/SafeIntent$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lmozilla/components/support/utils/SafeIntent;->Companion:Lmozilla/components/support/utils/SafeIntent$Companion;

    .line 102
    const-class v0, Lmozilla/components/support/utils/SafeIntent;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmozilla/components/support/utils/SafeIntent;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 1
    .param p1, "unsafe"    # Landroid/content/Intent;

    .prologue
    const-string v0, "unsafe"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmozilla/components/support/utils/SafeIntent;->unsafe:Landroid/content/Intent;

    return-void
.end method

.method private final safeAccess(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 3
    .param p1, "default"    # Ljava/lang/Object;
    .param p2, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lkotlin/jvm/functions/Function1",
            "<-",
            "Landroid/content/Intent;",
            "+TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 90
    nop

    .line 91
    :try_start_0
    iget-object v1, p0, Lmozilla/components/support/utils/SafeIntent;->unsafe:Landroid/content/Intent;

    invoke-interface {p2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p1

    .line 90
    .end local p1    # "default":Ljava/lang/Object;
    :goto_0
    return-object p1

    .line 92
    .restart local p1    # "default":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    sget-object v1, Lmozilla/components/support/utils/SafeIntent;->LOGTAG:Ljava/lang/String;

    const-string v2, "Could not read from intent: OOM. Malformed?"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 95
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v1, Lmozilla/components/support/utils/SafeIntent;->LOGTAG:Ljava/lang/String;

    const-string v2, "Could not read from intent."

    check-cast v0, Ljava/lang/Throwable;

    .end local v0    # "e":Ljava/lang/RuntimeException;
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static bridge synthetic safeAccess$default(Lmozilla/components/support/utils/SafeIntent;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    .line 89
    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lmozilla/components/support/utils/SafeIntent;->safeAccess(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lmozilla/components/support/utils/SafeIntent;->unsafe:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getBooleanExtra(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    new-instance v0, Lmozilla/components/support/utils/SafeIntent$getBooleanExtra$1;

    invoke-direct {v0, p0, p1, p2}, Lmozilla/components/support/utils/SafeIntent$getBooleanExtra$1;-><init>(Lmozilla/components/support/utils/SafeIntent;Ljava/lang/String;Z)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, v1, v0}, Lmozilla/components/support/utils/SafeIntent;->safeAccess(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 51
    return v0
.end method

.method public final getBundleExtra(Ljava/lang/String;)Lmozilla/components/support/utils/SafeBundle;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    new-instance v0, Lmozilla/components/support/utils/SafeIntent$getBundleExtra$1;

    invoke-direct {v0, p0, p1}, Lmozilla/components/support/utils/SafeIntent$getBundleExtra$1;-><init>(Lmozilla/components/support/utils/SafeIntent;Ljava/lang/String;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x1

    invoke-static {p0, v2, v0, v1, v2}, Lmozilla/components/support/utils/SafeIntent;->safeAccess$default(Lmozilla/components/support/utils/SafeIntent;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmozilla/components/support/utils/SafeBundle;

    .line 68
    return-object v0
.end method

.method public final getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    new-instance v0, Lmozilla/components/support/utils/SafeIntent$getCharSequenceExtra$1;

    invoke-direct {v0, p0, p1}, Lmozilla/components/support/utils/SafeIntent$getCharSequenceExtra$1;-><init>(Lmozilla/components/support/utils/SafeIntent;Ljava/lang/String;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x1

    invoke-static {p0, v2, v0, v1, v2}, Lmozilla/components/support/utils/SafeIntent;->safeAccess$default(Lmozilla/components/support/utils/SafeIntent;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 72
    return-object v0
.end method

.method public final getDataString()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 37
    new-instance v0, Lmozilla/components/support/utils/SafeIntent$dataString$1;

    invoke-direct {v0, p0}, Lmozilla/components/support/utils/SafeIntent$dataString$1;-><init>(Lmozilla/components/support/utils/SafeIntent;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x1

    invoke-static {p0, v2, v0, v1, v2}, Lmozilla/components/support/utils/SafeIntent;->safeAccess$default(Lmozilla/components/support/utils/SafeIntent;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getFlags()I
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lmozilla/components/support/utils/SafeIntent;->unsafe:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    return v0
.end method

.method public final getIntExtra(Ljava/lang/String;I)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v0, Lmozilla/components/support/utils/SafeIntent$getIntExtra$1;

    invoke-direct {v0, p0, p1, p2}, Lmozilla/components/support/utils/SafeIntent$getIntExtra$1;-><init>(Lmozilla/components/support/utils/SafeIntent;Ljava/lang/String;I)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, v1, v0}, Lmozilla/components/support/utils/SafeIntent;->safeAccess(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 55
    return v0
.end method

.method public final getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    new-instance v0, Lmozilla/components/support/utils/SafeIntent$getParcelableArrayListExtra$1;

    invoke-direct {v0, p0, p1}, Lmozilla/components/support/utils/SafeIntent$getParcelableArrayListExtra$1;-><init>(Lmozilla/components/support/utils/SafeIntent;Ljava/lang/String;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x1

    invoke-static {p0, v2, v0, v1, v2}, Lmozilla/components/support/utils/SafeIntent;->safeAccess$default(Lmozilla/components/support/utils/SafeIntent;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
    .locals 3
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
    const/4 v2, 0x0

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    new-instance v0, Lmozilla/components/support/utils/SafeIntent$getParcelableExtra$1;

    invoke-direct {v0, p0, p1}, Lmozilla/components/support/utils/SafeIntent$getParcelableExtra$1;-><init>(Lmozilla/components/support/utils/SafeIntent;Ljava/lang/String;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x1

    invoke-static {p0, v2, v0, v1, v2}, Lmozilla/components/support/utils/SafeIntent;->safeAccess$default(Lmozilla/components/support/utils/SafeIntent;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    .line 76
    return-object v0
.end method

.method public final getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    new-instance v0, Lmozilla/components/support/utils/SafeIntent$getStringExtra$1;

    invoke-direct {v0, p0, p1}, Lmozilla/components/support/utils/SafeIntent$getStringExtra$1;-><init>(Lmozilla/components/support/utils/SafeIntent;Ljava/lang/String;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x1

    invoke-static {p0, v2, v0, v1, v2}, Lmozilla/components/support/utils/SafeIntent;->safeAccess$default(Lmozilla/components/support/utils/SafeIntent;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 59
    return-object v0
.end method

.method public final getUnsafe()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lmozilla/components/support/utils/SafeIntent;->unsafe:Landroid/content/Intent;

    return-object v0
.end method

.method public final hasExtra(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    new-instance v0, Lmozilla/components/support/utils/SafeIntent$hasExtra$1;

    invoke-direct {v0, p0, p1}, Lmozilla/components/support/utils/SafeIntent$hasExtra$1;-><init>(Lmozilla/components/support/utils/SafeIntent;Ljava/lang/String;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, v1, v0}, Lmozilla/components/support/utils/SafeIntent;->safeAccess(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 47
    return v0
.end method

.method public final isLauncherIntent()Z
    .locals 3

    .prologue
    .line 32
    iget-object v1, p0, Lmozilla/components/support/utils/SafeIntent;->unsafe:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    .line 33
    .local v0, "intentCategories":Ljava/util/Set;
    if-eqz v0, :cond_0

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "android.intent.action.MAIN"

    iget-object v2, p0, Lmozilla/components/support/utils/SafeIntent;->unsafe:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
