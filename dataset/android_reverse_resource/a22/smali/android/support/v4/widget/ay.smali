.class public abstract Landroid/support/v4/widget/ay;
.super Landroid/support/v4/widget/l;


# instance fields
.field private mDropDownLayout:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLayout:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1, p3}, Landroid/support/v4/widget/l;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput p2, p0, Landroid/support/v4/widget/ay;->mDropDownLayout:I

    iput p2, p0, Landroid/support/v4/widget/ay;->mLayout:I

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Landroid/support/v4/widget/ay;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;I)V
    .locals 1

    invoke-direct {p0, p1, p3, p4}, Landroid/support/v4/widget/l;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    iput p2, p0, Landroid/support/v4/widget/ay;->mDropDownLayout:I

    iput p2, p0, Landroid/support/v4/widget/ay;->mLayout:I

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Landroid/support/v4/widget/ay;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V
    .locals 1

    invoke-direct {p0, p1, p3, p4}, Landroid/support/v4/widget/l;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    iput p2, p0, Landroid/support/v4/widget/ay;->mDropDownLayout:I

    iput p2, p0, Landroid/support/v4/widget/ay;->mLayout:I

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Landroid/support/v4/widget/ay;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public newDropDownView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Landroid/support/v4/widget/ay;->mInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Landroid/support/v4/widget/ay;->mDropDownLayout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Landroid/support/v4/widget/ay;->mInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Landroid/support/v4/widget/ay;->mLayout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public setDropDownViewResource(I)V
    .locals 0

    iput p1, p0, Landroid/support/v4/widget/ay;->mDropDownLayout:I

    return-void
.end method

.method public setViewResource(I)V
    .locals 0

    iput p1, p0, Landroid/support/v4/widget/ay;->mLayout:I

    return-void
.end method
