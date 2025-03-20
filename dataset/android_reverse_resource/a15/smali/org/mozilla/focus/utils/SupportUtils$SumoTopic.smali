.class public final enum Lorg/mozilla/focus/utils/SupportUtils$SumoTopic;
.super Ljava/lang/Enum;
.source "SupportUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/focus/utils/SupportUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SumoTopic"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/mozilla/focus/utils/SupportUtils$SumoTopic;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/mozilla/focus/utils/SupportUtils$SumoTopic;

.field public static final enum ADD_SEARCH_ENGINE:Lorg/mozilla/focus/utils/SupportUtils$SumoTopic;

.field public static final enum AUTOCOMPLETE:Lorg/mozilla/focus/utils/SupportUtils$SumoTopic;

.field public static final enum TRACKERS:Lorg/mozilla/focus/utils/SupportUtils$SumoTopic;

.field public static final enum USAGE_DATA:Lorg/mozilla/focus/utils/SupportUtils$SumoTopic;

.field public static final enum WHATS_NEW:Lorg/mozilla/focus/utils/SupportUtils$SumoTopic;


# instance fields
.field final topicStr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 28
    new-instance v0, Lorg/mozilla/focus/utils/SupportUtils$SumoTopic;

    const-string v1, "ADD_SEARCH_ENGINE"

    const-string v2, "add-search-engine"

    invoke-direct {v0, v1, v3, v2}, Lorg/mozilla/focus/utils/SupportUtils$SumoTopic;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/mozilla/focus/utils/SupportUtils$SumoTopic;->ADD_SEARCH_ENGINE:Lorg/mozilla/focus/utils/SupportUtils$SumoTopic;

    .line 29
    new-instance v0, Lorg/mozilla/focus/utils/SupportUtils$SumoTopic;

    const-string v1, "AUTOCOMPLETE"

    const-string v2, "autofill-domain-android"

    invoke-direct {v0, v1, v4, v2}, Lorg/mozilla/focus/utils/SupportUtils$SumoTopic;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/mozilla/focus/utils/SupportUtils$SumoTopic;->AUTOCOMPLETE:Lorg/mozilla/focus/utils/SupportUtils$SumoTopic;

    .line 30
    new-instance v0, Lorg/mozilla/focus/utils/SupportUtils$SumoTopic;

    const-string v1, "TRACKERS"

    const-string v2, "trackers"

    invoke-direct {v0, v1, v5, v2}, Lorg/mozilla/focus/utils/SupportUtils$SumoTopic;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/mozilla/focus/utils/SupportUtils$SumoTopic;->TRACKERS:Lorg/mozilla/focus/utils/SupportUtils$SumoTopic;

    .line 31
    new-instance v0, Lorg/mozilla/focus/utils/SupportUtils$SumoTopic;

    const-string v1, "USAGE_DATA"

    const-string v2, "usage-data"

    invoke-direct {v0, v1, v6, v2}, Lorg/mozilla/focus/utils/SupportUtils$SumoTopic;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/mozilla/focus/utils/SupportUtils$SumoTopic;->USAGE_DATA:Lorg/mozilla/focus/utils/SupportUtils$SumoTopic;

    .line 32
    new-instance v0, Lorg/mozilla/focus/utils/SupportUtils$SumoTopic;

    const-string v1, "WHATS_NEW"

    const-string v2, "whats-new-focus-android-6"

    invoke-direct {v0, v1, v7, v2}, Lorg/mozilla/focus/utils/SupportUtils$SumoTopic;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/mozilla/focus/utils/SupportUtils$SumoTopic;->WHATS_NEW:Lorg/mozilla/focus/utils/SupportUtils$SumoTopic;

    .line 27
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/mozilla/focus/utils/SupportUtils$SumoTopic;

    sget-object v1, Lorg/mozilla/focus/utils/SupportUtils$SumoTopic;->ADD_SEARCH_ENGINE:Lorg/mozilla/focus/utils/SupportUtils$SumoTopic;

    aput-object v1, v0, v3

    sget-object v1, Lorg/mozilla/focus/utils/SupportUtils$SumoTopic;->AUTOCOMPLETE:Lorg/mozilla/focus/utils/SupportUtils$SumoTopic;

    aput-object v1, v0, v4

    sget-object v1, Lorg/mozilla/focus/utils/SupportUtils$SumoTopic;->TRACKERS:Lorg/mozilla/focus/utils/SupportUtils$SumoTopic;

    aput-object v1, v0, v5

    sget-object v1, Lorg/mozilla/focus/utils/SupportUtils$SumoTopic;->USAGE_DATA:Lorg/mozilla/focus/utils/SupportUtils$SumoTopic;

    aput-object v1, v0, v6

    sget-object v1, Lorg/mozilla/focus/utils/SupportUtils$SumoTopic;->WHATS_NEW:Lorg/mozilla/focus/utils/SupportUtils$SumoTopic;

    aput-object v1, v0, v7

    sput-object v0, Lorg/mozilla/focus/utils/SupportUtils$SumoTopic;->$VALUES:[Lorg/mozilla/focus/utils/SupportUtils$SumoTopic;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "topicStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38
    iput-object p3, p0, Lorg/mozilla/focus/utils/SupportUtils$SumoTopic;->topicStr:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/mozilla/focus/utils/SupportUtils$SumoTopic;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 27
    const-class v0, Lorg/mozilla/focus/utils/SupportUtils$SumoTopic;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/mozilla/focus/utils/SupportUtils$SumoTopic;

    return-object v0
.end method

.method public static values()[Lorg/mozilla/focus/utils/SupportUtils$SumoTopic;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lorg/mozilla/focus/utils/SupportUtils$SumoTopic;->$VALUES:[Lorg/mozilla/focus/utils/SupportUtils$SumoTopic;

    invoke-virtual {v0}, [Lorg/mozilla/focus/utils/SupportUtils$SumoTopic;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mozilla/focus/utils/SupportUtils$SumoTopic;

    return-object v0
.end method
