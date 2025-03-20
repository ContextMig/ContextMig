.class public final enum Lorg/mozilla/focus/session/Source;
.super Ljava/lang/Enum;
.source "Source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/mozilla/focus/session/Source;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/mozilla/focus/session/Source;

.field public static final enum CUSTOM_TAB:Lorg/mozilla/focus/session/Source;

.field public static final enum HOME_SCREEN:Lorg/mozilla/focus/session/Source;

.field public static final enum MENU:Lorg/mozilla/focus/session/Source;

.field public static final enum NONE:Lorg/mozilla/focus/session/Source;

.field public static final enum SHARE:Lorg/mozilla/focus/session/Source;

.field public static final enum TEXT_SELECTION:Lorg/mozilla/focus/session/Source;

.field public static final enum USER_ENTERED:Lorg/mozilla/focus/session/Source;

.field public static final enum VIEW:Lorg/mozilla/focus/session/Source;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 15
    new-instance v0, Lorg/mozilla/focus/session/Source;

    const-string v1, "VIEW"

    invoke-direct {v0, v1, v3}, Lorg/mozilla/focus/session/Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mozilla/focus/session/Source;->VIEW:Lorg/mozilla/focus/session/Source;

    .line 20
    new-instance v0, Lorg/mozilla/focus/session/Source;

    const-string v1, "SHARE"

    invoke-direct {v0, v1, v4}, Lorg/mozilla/focus/session/Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mozilla/focus/session/Source;->SHARE:Lorg/mozilla/focus/session/Source;

    .line 25
    new-instance v0, Lorg/mozilla/focus/session/Source;

    const-string v1, "TEXT_SELECTION"

    invoke-direct {v0, v1, v5}, Lorg/mozilla/focus/session/Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mozilla/focus/session/Source;->TEXT_SELECTION:Lorg/mozilla/focus/session/Source;

    .line 30
    new-instance v0, Lorg/mozilla/focus/session/Source;

    const-string v1, "HOME_SCREEN"

    invoke-direct {v0, v1, v6}, Lorg/mozilla/focus/session/Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mozilla/focus/session/Source;->HOME_SCREEN:Lorg/mozilla/focus/session/Source;

    .line 35
    new-instance v0, Lorg/mozilla/focus/session/Source;

    const-string v1, "USER_ENTERED"

    invoke-direct {v0, v1, v7}, Lorg/mozilla/focus/session/Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mozilla/focus/session/Source;->USER_ENTERED:Lorg/mozilla/focus/session/Source;

    .line 40
    new-instance v0, Lorg/mozilla/focus/session/Source;

    const-string v1, "CUSTOM_TAB"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/mozilla/focus/session/Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mozilla/focus/session/Source;->CUSTOM_TAB:Lorg/mozilla/focus/session/Source;

    .line 45
    new-instance v0, Lorg/mozilla/focus/session/Source;

    const-string v1, "MENU"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/mozilla/focus/session/Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mozilla/focus/session/Source;->MENU:Lorg/mozilla/focus/session/Source;

    .line 50
    new-instance v0, Lorg/mozilla/focus/session/Source;

    const-string v1, "NONE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/mozilla/focus/session/Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mozilla/focus/session/Source;->NONE:Lorg/mozilla/focus/session/Source;

    .line 11
    const/16 v0, 0x8

    new-array v0, v0, [Lorg/mozilla/focus/session/Source;

    sget-object v1, Lorg/mozilla/focus/session/Source;->VIEW:Lorg/mozilla/focus/session/Source;

    aput-object v1, v0, v3

    sget-object v1, Lorg/mozilla/focus/session/Source;->SHARE:Lorg/mozilla/focus/session/Source;

    aput-object v1, v0, v4

    sget-object v1, Lorg/mozilla/focus/session/Source;->TEXT_SELECTION:Lorg/mozilla/focus/session/Source;

    aput-object v1, v0, v5

    sget-object v1, Lorg/mozilla/focus/session/Source;->HOME_SCREEN:Lorg/mozilla/focus/session/Source;

    aput-object v1, v0, v6

    sget-object v1, Lorg/mozilla/focus/session/Source;->USER_ENTERED:Lorg/mozilla/focus/session/Source;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/mozilla/focus/session/Source;->CUSTOM_TAB:Lorg/mozilla/focus/session/Source;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/mozilla/focus/session/Source;->MENU:Lorg/mozilla/focus/session/Source;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/mozilla/focus/session/Source;->NONE:Lorg/mozilla/focus/session/Source;

    aput-object v2, v0, v1

    sput-object v0, Lorg/mozilla/focus/session/Source;->$VALUES:[Lorg/mozilla/focus/session/Source;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/mozilla/focus/session/Source;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 11
    const-class v0, Lorg/mozilla/focus/session/Source;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/mozilla/focus/session/Source;

    return-object v0
.end method

.method public static values()[Lorg/mozilla/focus/session/Source;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lorg/mozilla/focus/session/Source;->$VALUES:[Lorg/mozilla/focus/session/Source;

    invoke-virtual {v0}, [Lorg/mozilla/focus/session/Source;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mozilla/focus/session/Source;

    return-object v0
.end method
