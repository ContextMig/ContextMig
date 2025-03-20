.class public final Ldouzifly/list/ui/home/GroupEditorActivity;
.super Landroid/support/v7/app/AppCompatActivity;


# static fields
.field public static final a:Ldouzifly/list/ui/home/c;

# The value of this static final field might be set in the static constructor
.field private static final g:Ljava/lang/String; = "show_all"

.field private static final synthetic h:[Lb/f/e;


# instance fields
.field private final b:Lb/b;

.field private final c:Lb/b;

.field private d:Ldouzifly/list/ui/home/e;

.field private e:Landroid/widget/EditText;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Ldouzifly/list/ui/home/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ldouzifly/list/ui/home/c;-><init>(Lb/d/b/g;)V

    sput-object v0, Ldouzifly/list/ui/home/GroupEditorActivity;->a:Ldouzifly/list/ui/home/c;

    const-string v0, "show_all"

    sput-object v0, Ldouzifly/list/ui/home/GroupEditorActivity;->g:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v1, v0, [Lb/f/e;

    const/4 v2, 0x0

    new-instance v0, Lb/d/b/o;

    const-class v3, Ldouzifly/list/ui/home/GroupEditorActivity;

    invoke-static {v3}, Lb/d/b/p;->a(Ljava/lang/Class;)Lb/f/b;

    move-result-object v3

    const-string v4, "mRecyclerView"

    const-string v5, "getMRecyclerView()Landroid/support/v7/widget/RecyclerView;"

    invoke-direct {v0, v3, v4, v5}, Lb/d/b/o;-><init>(Lb/f/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lb/d/b/p;->a(Lb/d/b/n;)Lb/f/i;

    move-result-object v0

    check-cast v0, Lb/f/e;

    aput-object v0, v1, v2

    const/4 v2, 0x1

    new-instance v0, Lb/d/b/o;

    const-class v3, Ldouzifly/list/ui/home/GroupEditorActivity;

    invoke-static {v3}, Lb/d/b/p;->a(Ljava/lang/Class;)Lb/f/b;

    move-result-object v3

    const-string v4, "mFabAdd"

    const-string v5, "getMFabAdd()Lcom/github/clans/fab/FloatingActionButton;"

    invoke-direct {v0, v3, v4, v5}, Lb/d/b/o;-><init>(Lb/f/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lb/d/b/p;->a(Lb/d/b/n;)Lb/f/i;

    move-result-object v0

    check-cast v0, Lb/f/e;

    aput-object v0, v1, v2

    sput-object v1, Ldouzifly/list/ui/home/GroupEditorActivity;->h:[Lb/f/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    new-instance v0, Ldouzifly/list/ui/home/GroupEditorActivity$b;

    invoke-direct {v0, p0}, Ldouzifly/list/ui/home/GroupEditorActivity$b;-><init>(Ldouzifly/list/ui/home/GroupEditorActivity;)V

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Lb/c;->a(Lb/d/a/a;)Lb/b;

    move-result-object v0

    iput-object v0, p0, Ldouzifly/list/ui/home/GroupEditorActivity;->b:Lb/b;

    new-instance v0, Ldouzifly/list/ui/home/GroupEditorActivity$a;

    invoke-direct {v0, p0}, Ldouzifly/list/ui/home/GroupEditorActivity$a;-><init>(Ldouzifly/list/ui/home/GroupEditorActivity;)V

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Lb/c;->a(Lb/d/a/a;)Lb/b;

    move-result-object v0

    iput-object v0, p0, Ldouzifly/list/ui/home/GroupEditorActivity;->c:Lb/b;

    new-instance v0, Ldouzifly/list/ui/home/e;

    invoke-direct {v0, p0}, Ldouzifly/list/ui/home/e;-><init>(Ldouzifly/list/ui/home/GroupEditorActivity;)V

    iput-object v0, p0, Ldouzifly/list/ui/home/GroupEditorActivity;->d:Ldouzifly/list/ui/home/e;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ldouzifly/list/ui/home/GroupEditorActivity;->f:Z

    return-void
.end method

.method public static final synthetic f()Ljava/lang/String;
    .locals 1

    sget-object v0, Ldouzifly/list/ui/home/GroupEditorActivity;->g:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()Landroid/support/v7/widget/RecyclerView;
    .locals 3

    iget-object v0, p0, Ldouzifly/list/ui/home/GroupEditorActivity;->b:Lb/b;

    sget-object v1, Ldouzifly/list/ui/home/GroupEditorActivity;->h:[Lb/f/e;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    nop

    invoke-interface {v0}, Lb/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method public final a(Landroid/content/Intent;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Ldouzifly/list/ui/home/GroupEditorActivity;->a:Ldouzifly/list/ui/home/c;

    invoke-virtual {v0}, Ldouzifly/list/ui/home/c;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ldouzifly/list/ui/home/GroupEditorActivity;->f:Z

    goto :goto_0
.end method

.method public final a(Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Ldouzifly/list/ui/home/GroupEditorActivity;->e:Landroid/widget/EditText;

    return-void
.end method

.method public final b()Lcom/github/clans/fab/FloatingActionButton;
    .locals 3

    iget-object v0, p0, Ldouzifly/list/ui/home/GroupEditorActivity;->c:Lb/b;

    sget-object v1, Ldouzifly/list/ui/home/GroupEditorActivity;->h:[Lb/f/e;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    nop

    invoke-interface {v0}, Lb/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/clans/fab/FloatingActionButton;

    return-object v0
.end method

.method public final c()Ldouzifly/list/ui/home/e;
    .locals 1

    iget-object v0, p0, Ldouzifly/list/ui/home/GroupEditorActivity;->d:Ldouzifly/list/ui/home/e;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Ldouzifly/list/ui/home/GroupEditorActivity;->f:Z

    return v0
.end method

.method public final e()V
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Ldouzifly/list/ui/home/GroupEditorActivity;->e:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    check-cast v0, Landroid/view/View;

    nop

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "input_method"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v0, Lb/e;

    const-string v1, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager"

    invoke-direct {v0, v1}, Lb/e;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    :cond_1
    iget-object v0, p0, Ldouzifly/list/ui/home/GroupEditorActivity;->e:Landroid/widget/EditText;

    if-nez v0, :cond_2

    invoke-static {}, Lb/d/b/i;->a()V

    :cond_2
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/CharSequence;

    nop

    invoke-static {v0}, Lb/g/c;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_4

    sget-object v0, Ldouzifly/list/b/e;->a:Ldouzifly/list/b/e;

    invoke-virtual {v0, v1}, Ldouzifly/list/b/e;->a(Ljava/lang/String;)V

    iget-object v1, p0, Ldouzifly/list/ui/home/GroupEditorActivity;->e:Landroid/widget/EditText;

    if-nez v1, :cond_3

    invoke-static {}, Lb/d/b/i;->a()V

    :cond_3
    const-string v0, ""

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v0, p0, Ldouzifly/list/ui/home/GroupEditorActivity;->d:Ldouzifly/list/ui/home/e;

    invoke-virtual {v0, v2}, Ldouzifly/list/ui/home/e;->a(Z)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/GroupEditorActivity;->b()Lcom/github/clans/fab/FloatingActionButton;

    move-result-object v1

    sget-object v0, Lcom/mikepenz/google_material_typeface_library/b;->dT:Lcom/mikepenz/google_material_typeface_library/b;

    check-cast v0, Lcom/mikepenz/iconics/typeface/a;

    const v2, 0x7f0c002f

    invoke-static {v0, v2}, Ldouzifly/list/f/e;->b(Lcom/mikepenz/iconics/typeface/a;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/github/clans/fab/FloatingActionButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_5
    move v0, v2

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/GroupEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Ldouzifly/list/ui/home/GroupEditorActivity;->a(Landroid/content/Intent;)V

    const v0, 0x7f04002b

    invoke-virtual {p0, v0}, Ldouzifly/list/ui/home/GroupEditorActivity;->setContentView(I)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/GroupEditorActivity;->a()Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/GroupEditorActivity;->a()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    iget-object v0, p0, Ldouzifly/list/ui/home/GroupEditorActivity;->d:Ldouzifly/list/ui/home/e;

    check-cast v0, Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Ldouzifly/list/ui/home/GroupEditorActivity;->d:Ldouzifly/list/ui/home/e;

    sget-object v1, Ldouzifly/list/b/e;->a:Ldouzifly/list/b/e;

    invoke-virtual {v1}, Ldouzifly/list/b/e;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldouzifly/list/ui/home/e;->a(Ljava/util/List;)V

    const v0, 0x7f0d006e

    invoke-virtual {p0, v0}, Ldouzifly/list/ui/home/GroupEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lb/e;

    const-string v1, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {v0, v1}, Lb/e;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Ldouzifly/list/f/d;->a()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/GroupEditorActivity;->b()Lcom/github/clans/fab/FloatingActionButton;

    move-result-object v1

    new-instance v0, Ldouzifly/list/ui/home/GroupEditorActivity$c;

    invoke-direct {v0, p0}, Ldouzifly/list/ui/home/GroupEditorActivity$c;-><init>(Ldouzifly/list/ui/home/GroupEditorActivity;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Lcom/github/clans/fab/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/GroupEditorActivity;->b()Lcom/github/clans/fab/FloatingActionButton;

    move-result-object v1

    sget-object v0, Lcom/mikepenz/google_material_typeface_library/b;->dT:Lcom/mikepenz/google_material_typeface_library/b;

    check-cast v0, Lcom/mikepenz/iconics/typeface/a;

    const v2, 0x7f0c002f

    invoke-static {v0, v2}, Ldouzifly/list/f/e;->b(Lcom/mikepenz/iconics/typeface/a;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/github/clans/fab/FloatingActionButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
