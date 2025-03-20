.class final Lde/baumann/browser/Unit/BrowserUnit$1;
.super Ljava/lang/Object;
.source "BrowserUnit.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/baumann/browser/Unit/BrowserUnit;->importBookmarks(Landroid/content/Context;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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


# direct methods
.method constructor <init>()V
    .locals 0

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lde/baumann/browser/Database/Record;Lde/baumann/browser/Database/Record;)I
    .locals 0

    .line 326
    invoke-virtual {p1}, Lde/baumann/browser/Database/Record;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lde/baumann/browser/Database/Record;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 323
    check-cast p1, Lde/baumann/browser/Database/Record;

    check-cast p2, Lde/baumann/browser/Database/Record;

    invoke-virtual {p0, p1, p2}, Lde/baumann/browser/Unit/BrowserUnit$1;->compare(Lde/baumann/browser/Database/Record;Lde/baumann/browser/Database/Record;)I

    move-result p1

    return p1
.end method
