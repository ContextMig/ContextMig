.class public final Lorg/mozilla/focus/utils/Features;
.super Ljava/lang/Object;
.source "Features.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/focus/utils/Features$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/mozilla/focus/utils/Features$Companion;

# The value of this static final field might be set in the static constructor
.field private static final SEARCH_TERMS_OR_URL:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Lorg/mozilla/focus/utils/Features$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mozilla/focus/utils/Features$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/mozilla/focus/utils/Features;->Companion:Lorg/mozilla/focus/utils/Features$Companion;

    .line 18
    const/4 v0, 0x1

    sput-boolean v0, Lorg/mozilla/focus/utils/Features;->SEARCH_TERMS_OR_URL:Z

    return-void
.end method

.method public static final synthetic access$getSEARCH_TERMS_OR_URL$cp()Z
    .locals 1

    .prologue
    .line 10
    sget-boolean v0, Lorg/mozilla/focus/utils/Features;->SEARCH_TERMS_OR_URL:Z

    return v0
.end method
