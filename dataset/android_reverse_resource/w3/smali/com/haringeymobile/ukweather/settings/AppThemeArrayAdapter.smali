.class public Lcom/haringeymobile/ukweather/settings/AppThemeArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AppThemeArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haringeymobile/ukweather/settings/AppThemeArrayAdapter$PreferenceViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private context:Landroid/content/Context;

.field private index:I

.field private resourceIds:[I


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/haringeymobile/ukweather/settings/AppThemeArrayAdapter;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x2cf8b6d7e85e324bL    # 4.739237295361843E-92

    const-string v2, "com/haringeymobile/ukweather/settings/AppThemeArrayAdapter"

    const/16 v3, 0xf

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/haringeymobile/ukweather/settings/AppThemeArrayAdapter;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;I[Ljava/lang/CharSequence;[II)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/settings/AppThemeArrayAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 36
    iput-object p1, p0, Lcom/haringeymobile/ukweather/settings/AppThemeArrayAdapter;->context:Landroid/content/Context;

    .line 37
    iput p5, p0, Lcom/haringeymobile/ukweather/settings/AppThemeArrayAdapter;->index:I

    .line 38
    iput-object p4, p0, Lcom/haringeymobile/ukweather/settings/AppThemeArrayAdapter;->resourceIds:[I

    .line 39
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p2, "rowView"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/settings/AppThemeArrayAdapter;->$jacocoInit()[Z

    move-result-object v4

    .line 46
    if-eqz p2, :cond_0

    aput-boolean v2, v4, v2

    .line 56
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/haringeymobile/ukweather/settings/AppThemeArrayAdapter$PreferenceViewHolder;

    const/16 v1, 0x8

    aput-boolean v2, v4, v1

    .line 58
    invoke-static {v0}, Lcom/haringeymobile/ukweather/settings/AppThemeArrayAdapter$PreferenceViewHolder;->access$000(Lcom/haringeymobile/ukweather/settings/AppThemeArrayAdapter$PreferenceViewHolder;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    const/16 v5, 0x9

    aput-boolean v2, v4, v5

    .line 59
    iget-object v5, p0, Lcom/haringeymobile/ukweather/settings/AppThemeArrayAdapter;->resourceIds:[I

    aget v5, v5, p1

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/16 v1, 0xa

    aput-boolean v2, v4, v1

    .line 61
    invoke-static {v0}, Lcom/haringeymobile/ukweather/settings/AppThemeArrayAdapter$PreferenceViewHolder;->access$100(Lcom/haringeymobile/ukweather/settings/AppThemeArrayAdapter$PreferenceViewHolder;)Landroid/widget/CheckedTextView;

    move-result-object v5

    invoke-virtual {p0, p1}, Lcom/haringeymobile/ukweather/settings/AppThemeArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v5, v1}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0xb

    aput-boolean v2, v4, v1

    .line 62
    invoke-static {v0}, Lcom/haringeymobile/ukweather/settings/AppThemeArrayAdapter$PreferenceViewHolder;->access$100(Lcom/haringeymobile/ukweather/settings/AppThemeArrayAdapter$PreferenceViewHolder;)Landroid/widget/CheckedTextView;

    move-result-object v1

    iget v0, p0, Lcom/haringeymobile/ukweather/settings/AppThemeArrayAdapter;->index:I

    if-ne p1, v0, :cond_1

    const/16 v0, 0xc

    aput-boolean v2, v4, v0

    move v0, v2

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 63
    const/16 v0, 0xe

    aput-boolean v2, v4, v0

    return-object p2

    .line 46
    :cond_0
    const/4 v0, 0x2

    aput-boolean v2, v4, v0

    .line 47
    iget-object v0, p0, Lcom/haringeymobile/ukweather/settings/AppThemeArrayAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03003b

    invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const/4 v0, 0x3

    aput-boolean v2, v4, v0

    .line 49
    new-instance v1, Lcom/haringeymobile/ukweather/settings/AppThemeArrayAdapter$PreferenceViewHolder;

    invoke-direct {v1, p0}, Lcom/haringeymobile/ukweather/settings/AppThemeArrayAdapter$PreferenceViewHolder;-><init>(Lcom/haringeymobile/ukweather/settings/AppThemeArrayAdapter;)V

    const/4 v0, 0x4

    aput-boolean v2, v4, v0

    .line 51
    const v0, 0x7f0c0089

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/haringeymobile/ukweather/settings/AppThemeArrayAdapter$PreferenceViewHolder;->access$002(Lcom/haringeymobile/ukweather/settings/AppThemeArrayAdapter$PreferenceViewHolder;Landroid/view/View;)Landroid/view/View;

    const/4 v0, 0x5

    aput-boolean v2, v4, v0

    .line 52
    const v0, 0x7f0c008a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    invoke-static {v1, v0}, Lcom/haringeymobile/ukweather/settings/AppThemeArrayAdapter$PreferenceViewHolder;->access$102(Lcom/haringeymobile/ukweather/settings/AppThemeArrayAdapter$PreferenceViewHolder;Landroid/widget/CheckedTextView;)Landroid/widget/CheckedTextView;

    const/4 v0, 0x6

    aput-boolean v2, v4, v0

    .line 53
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x7

    aput-boolean v2, v4, v0

    goto/16 :goto_0

    .line 62
    :cond_1
    const/16 v0, 0xd

    aput-boolean v2, v4, v0

    move v0, v3

    goto :goto_1
.end method
