.class public final enum Lcom/dropbox/sync/android/analytics/HttpRequestEvents$HttpMethod;
.super Ljava/lang/Enum;
.source "HttpRequestEvents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/sync/android/analytics/HttpRequestEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HttpMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/sync/android/analytics/HttpRequestEvents$HttpMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/sync/android/analytics/HttpRequestEvents$HttpMethod;

.field public static final enum http_method_get:Lcom/dropbox/sync/android/analytics/HttpRequestEvents$HttpMethod;

.field public static final enum http_method_get_to_file:Lcom/dropbox/sync/android/analytics/HttpRequestEvents$HttpMethod;

.field public static final enum http_method_num_values:Lcom/dropbox/sync/android/analytics/HttpRequestEvents$HttpMethod;

.field public static final enum http_method_post:Lcom/dropbox/sync/android/analytics/HttpRequestEvents$HttpMethod;

.field public static final enum http_method_put_file:Lcom/dropbox/sync/android/analytics/HttpRequestEvents$HttpMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 165
    new-instance v0, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$HttpMethod;

    const-string v1, "http_method_get"

    invoke-direct {v0, v1, v2}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$HttpMethod;->http_method_get:Lcom/dropbox/sync/android/analytics/HttpRequestEvents$HttpMethod;

    .line 167
    new-instance v0, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$HttpMethod;

    const-string v1, "http_method_post"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$HttpMethod;->http_method_post:Lcom/dropbox/sync/android/analytics/HttpRequestEvents$HttpMethod;

    .line 169
    new-instance v0, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$HttpMethod;

    const-string v1, "http_method_put_file"

    invoke-direct {v0, v1, v4}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$HttpMethod;->http_method_put_file:Lcom/dropbox/sync/android/analytics/HttpRequestEvents$HttpMethod;

    .line 171
    new-instance v0, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$HttpMethod;

    const-string v1, "http_method_get_to_file"

    invoke-direct {v0, v1, v5}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$HttpMethod;->http_method_get_to_file:Lcom/dropbox/sync/android/analytics/HttpRequestEvents$HttpMethod;

    .line 173
    new-instance v0, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$HttpMethod;

    const-string v1, "http_method_num_values"

    invoke-direct {v0, v1, v6}, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$HttpMethod;->http_method_num_values:Lcom/dropbox/sync/android/analytics/HttpRequestEvents$HttpMethod;

    .line 163
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/dropbox/sync/android/analytics/HttpRequestEvents$HttpMethod;

    sget-object v1, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$HttpMethod;->http_method_get:Lcom/dropbox/sync/android/analytics/HttpRequestEvents$HttpMethod;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$HttpMethod;->http_method_post:Lcom/dropbox/sync/android/analytics/HttpRequestEvents$HttpMethod;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$HttpMethod;->http_method_put_file:Lcom/dropbox/sync/android/analytics/HttpRequestEvents$HttpMethod;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$HttpMethod;->http_method_get_to_file:Lcom/dropbox/sync/android/analytics/HttpRequestEvents$HttpMethod;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$HttpMethod;->http_method_num_values:Lcom/dropbox/sync/android/analytics/HttpRequestEvents$HttpMethod;

    aput-object v1, v0, v6

    sput-object v0, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$HttpMethod;->$VALUES:[Lcom/dropbox/sync/android/analytics/HttpRequestEvents$HttpMethod;

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
    .line 163
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/sync/android/analytics/HttpRequestEvents$HttpMethod;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 163
    const-class v0, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$HttpMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$HttpMethod;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/sync/android/analytics/HttpRequestEvents$HttpMethod;
    .locals 1

    .prologue
    .line 163
    sget-object v0, Lcom/dropbox/sync/android/analytics/HttpRequestEvents$HttpMethod;->$VALUES:[Lcom/dropbox/sync/android/analytics/HttpRequestEvents$HttpMethod;

    invoke-virtual {v0}, [Lcom/dropbox/sync/android/analytics/HttpRequestEvents$HttpMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/sync/android/analytics/HttpRequestEvents$HttpMethod;

    return-object v0
.end method
