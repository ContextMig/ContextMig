.class public final enum Lorg/mozilla/focus/webview/matcher/BlocklistProcessor$ListType;
.super Ljava/lang/Enum;
.source "BlocklistProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/focus/webview/matcher/BlocklistProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ListType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/mozilla/focus/webview/matcher/BlocklistProcessor$ListType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/mozilla/focus/webview/matcher/BlocklistProcessor$ListType;

.field public static final enum BASE_LIST:Lorg/mozilla/focus/webview/matcher/BlocklistProcessor$ListType;

.field public static final enum OVERRIDE_LIST:Lorg/mozilla/focus/webview/matcher/BlocklistProcessor$ListType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 51
    new-instance v0, Lorg/mozilla/focus/webview/matcher/BlocklistProcessor$ListType;

    const-string v1, "BASE_LIST"

    invoke-direct {v0, v1, v2}, Lorg/mozilla/focus/webview/matcher/BlocklistProcessor$ListType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mozilla/focus/webview/matcher/BlocklistProcessor$ListType;->BASE_LIST:Lorg/mozilla/focus/webview/matcher/BlocklistProcessor$ListType;

    .line 52
    new-instance v0, Lorg/mozilla/focus/webview/matcher/BlocklistProcessor$ListType;

    const-string v1, "OVERRIDE_LIST"

    invoke-direct {v0, v1, v3}, Lorg/mozilla/focus/webview/matcher/BlocklistProcessor$ListType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mozilla/focus/webview/matcher/BlocklistProcessor$ListType;->OVERRIDE_LIST:Lorg/mozilla/focus/webview/matcher/BlocklistProcessor$ListType;

    .line 50
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/mozilla/focus/webview/matcher/BlocklistProcessor$ListType;

    sget-object v1, Lorg/mozilla/focus/webview/matcher/BlocklistProcessor$ListType;->BASE_LIST:Lorg/mozilla/focus/webview/matcher/BlocklistProcessor$ListType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/mozilla/focus/webview/matcher/BlocklistProcessor$ListType;->OVERRIDE_LIST:Lorg/mozilla/focus/webview/matcher/BlocklistProcessor$ListType;

    aput-object v1, v0, v3

    sput-object v0, Lorg/mozilla/focus/webview/matcher/BlocklistProcessor$ListType;->$VALUES:[Lorg/mozilla/focus/webview/matcher/BlocklistProcessor$ListType;

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
    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/mozilla/focus/webview/matcher/BlocklistProcessor$ListType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 50
    const-class v0, Lorg/mozilla/focus/webview/matcher/BlocklistProcessor$ListType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/mozilla/focus/webview/matcher/BlocklistProcessor$ListType;

    return-object v0
.end method

.method public static values()[Lorg/mozilla/focus/webview/matcher/BlocklistProcessor$ListType;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lorg/mozilla/focus/webview/matcher/BlocklistProcessor$ListType;->$VALUES:[Lorg/mozilla/focus/webview/matcher/BlocklistProcessor$ListType;

    invoke-virtual {v0}, [Lorg/mozilla/focus/webview/matcher/BlocklistProcessor$ListType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mozilla/focus/webview/matcher/BlocklistProcessor$ListType;

    return-object v0
.end method
