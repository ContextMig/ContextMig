.class public Lcom/fsck/k9/fragment/MessageListFragmentComparators$SubjectComparator;
.super Ljava/lang/Object;
.source "MessageListFragmentComparators.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/fragment/MessageListFragmentComparators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubjectComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/database/Cursor;Landroid/database/Cursor;)I
    .locals 3
    .param p1, "cursor1"    # Landroid/database/Cursor;
    .param p2, "cursor2"    # Landroid/database/Cursor;

    .prologue
    const/4 v2, 0x3

    .line 144
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "subject1":Ljava/lang/String;
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, "subject2":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 148
    if-nez v1, :cond_0

    const/4 v2, 0x0

    .line 153
    :goto_0
    return v2

    .line 148
    :cond_0
    const/4 v2, -0x1

    goto :goto_0

    .line 149
    :cond_1
    if-nez v1, :cond_2

    .line 150
    const/4 v2, 0x1

    goto :goto_0

    .line 153
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 140
    check-cast p1, Landroid/database/Cursor;

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/fragment/MessageListFragmentComparators$SubjectComparator;->compare(Landroid/database/Cursor;Landroid/database/Cursor;)I

    move-result v0

    return v0
.end method
