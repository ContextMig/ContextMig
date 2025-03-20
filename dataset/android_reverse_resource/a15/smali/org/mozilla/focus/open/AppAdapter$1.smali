.class Lorg/mozilla/focus/open/AppAdapter$1;
.super Ljava/lang/Object;
.source "AppAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/focus/open/AppAdapter;-><init>(Landroid/content/Context;[Landroid/content/pm/ActivityInfo;Landroid/content/pm/ActivityInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/mozilla/focus/open/AppAdapter$App;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/focus/open/AppAdapter;


# direct methods
.method constructor <init>(Lorg/mozilla/focus/open/AppAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lorg/mozilla/focus/open/AppAdapter;

    .prologue
    .line 59
    iput-object p1, p0, Lorg/mozilla/focus/open/AppAdapter$1;->this$0:Lorg/mozilla/focus/open/AppAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 59
    check-cast p1, Lorg/mozilla/focus/open/AppAdapter$App;

    check-cast p2, Lorg/mozilla/focus/open/AppAdapter$App;

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/focus/open/AppAdapter$1;->compare(Lorg/mozilla/focus/open/AppAdapter$App;Lorg/mozilla/focus/open/AppAdapter$App;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/mozilla/focus/open/AppAdapter$App;Lorg/mozilla/focus/open/AppAdapter$App;)I
    .locals 2
    .param p1, "app1"    # Lorg/mozilla/focus/open/AppAdapter$App;
    .param p2, "app2"    # Lorg/mozilla/focus/open/AppAdapter$App;

    .prologue
    .line 62
    invoke-virtual {p1}, Lorg/mozilla/focus/open/AppAdapter$App;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lorg/mozilla/focus/open/AppAdapter$App;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
