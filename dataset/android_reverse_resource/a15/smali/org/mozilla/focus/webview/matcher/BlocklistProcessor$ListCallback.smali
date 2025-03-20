.class Lorg/mozilla/focus/webview/matcher/BlocklistProcessor$ListCallback;
.super Ljava/lang/Object;
.source "BlocklistProcessor.java"

# interfaces
.implements Lorg/mozilla/focus/webview/matcher/BlocklistProcessor$UrlListCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/focus/webview/matcher/BlocklistProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListCallback"
.end annotation


# instance fields
.field final desiredOwners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "desiredOwners":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lorg/mozilla/focus/webview/matcher/BlocklistProcessor$ListCallback;->list:Ljava/util/List;

    .line 87
    iput-object p2, p0, Lorg/mozilla/focus/webview/matcher/BlocklistProcessor$ListCallback;->desiredOwners:Ljava/util/Set;

    .line 88
    return-void
.end method


# virtual methods
.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "siteOwner"    # Ljava/lang/String;

    .prologue
    .line 92
    iget-object v0, p0, Lorg/mozilla/focus/webview/matcher/BlocklistProcessor$ListCallback;->desiredOwners:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lorg/mozilla/focus/webview/matcher/BlocklistProcessor$ListCallback;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_0
    return-void
.end method
