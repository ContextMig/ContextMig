.class public final Lorg/mozilla/focus/shortcut/IconGenerator;
.super Ljava/lang/Object;
.source "IconGenerator.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/focus/shortcut/IconGenerator$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/mozilla/focus/shortcut/IconGenerator$Companion;

# The value of this static final field might be set in the static constructor
.field private static final DEFAULT_ICON_CHAR:C = '?'

# The value of this static final field might be set in the static constructor
.field private static final TEXT_SIZE_DP:F = 36.0f


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Lorg/mozilla/focus/shortcut/IconGenerator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mozilla/focus/shortcut/IconGenerator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/mozilla/focus/shortcut/IconGenerator;->Companion:Lorg/mozilla/focus/shortcut/IconGenerator$Companion;

    .line 24
    const/high16 v0, 0x42100000    # 36.0f

    sput v0, Lorg/mozilla/focus/shortcut/IconGenerator;->TEXT_SIZE_DP:F

    .line 25
    const/16 v0, 0x3f

    sput-char v0, Lorg/mozilla/focus/shortcut/IconGenerator;->DEFAULT_ICON_CHAR:C

    return-void
.end method

.method public static final synthetic access$getDEFAULT_ICON_CHAR$cp()C
    .locals 1

    .prologue
    .line 21
    sget-char v0, Lorg/mozilla/focus/shortcut/IconGenerator;->DEFAULT_ICON_CHAR:C

    return v0
.end method

.method public static final synthetic access$getTEXT_SIZE_DP$cp()F
    .locals 1

    .prologue
    .line 21
    sget v0, Lorg/mozilla/focus/shortcut/IconGenerator;->TEXT_SIZE_DP:F

    return v0
.end method

.method public static final generateLauncherIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    sget-object v0, Lorg/mozilla/focus/shortcut/IconGenerator;->Companion:Lorg/mozilla/focus/shortcut/IconGenerator$Companion;

    invoke-virtual {v0, p0, p1}, Lorg/mozilla/focus/shortcut/IconGenerator$Companion;->generateLauncherIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static final generateLauncherIconPreOreo(Landroid/content/Context;C)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "character"    # C

    .prologue
    sget-object v0, Lorg/mozilla/focus/shortcut/IconGenerator;->Companion:Lorg/mozilla/focus/shortcut/IconGenerator$Companion;

    invoke-virtual {v0, p0, p1}, Lorg/mozilla/focus/shortcut/IconGenerator$Companion;->generateLauncherIconPreOreo(Landroid/content/Context;C)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static final getRepresentativeCharacter(Ljava/lang/String;)C
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    sget-object v0, Lorg/mozilla/focus/shortcut/IconGenerator;->Companion:Lorg/mozilla/focus/shortcut/IconGenerator$Companion;

    invoke-virtual {v0, p0}, Lorg/mozilla/focus/shortcut/IconGenerator$Companion;->getRepresentativeCharacter(Ljava/lang/String;)C

    move-result v0

    return v0
.end method
