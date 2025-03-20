.class Lde/baumann/browser/Activity/BrowserActivity$40;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/baumann/browser/Activity/BrowserActivity;->initBHList(Lde/baumann/browser/View/NinjaRelativeLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lde/baumann/browser/Database/Record;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lde/baumann/browser/Activity/BrowserActivity;


# direct methods
.method constructor <init>(Lde/baumann/browser/Activity/BrowserActivity;)V
    .locals 0

    .line 1797
    iput-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$40;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lde/baumann/browser/Database/Record;Lde/baumann/browser/Database/Record;)I
    .locals 0

    .line 1800
    invoke-virtual {p1}, Lde/baumann/browser/Database/Record;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lde/baumann/browser/Database/Record;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1797
    check-cast p1, Lde/baumann/browser/Database/Record;

    check-cast p2, Lde/baumann/browser/Database/Record;

    invoke-virtual {p0, p1, p2}, Lde/baumann/browser/Activity/BrowserActivity$40;->compare(Lde/baumann/browser/Database/Record;Lde/baumann/browser/Database/Record;)I

    move-result p1

    return p1
.end method
