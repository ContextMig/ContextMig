.class public Lcom/fsck/k9/ui/ContactBadge;
.super Landroid/widget/ImageView;
.source "ContactBadge.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/ui/ContactBadge$QueryHandler;
    }
.end annotation


# static fields
.field private static final EMAIL_ID_COLUMN_INDEX:I = 0x0

.field private static final EMAIL_LOOKUP_PROJECTION:[Ljava/lang/String;

.field private static final EMAIL_LOOKUP_STRING_COLUMN_INDEX:I = 0x1

.field private static final EXTRA_URI_CONTENT:Ljava/lang/String; = "uri_content"

.field private static final TOKEN_EMAIL_LOOKUP:I = 0x0

.field private static final TOKEN_EMAIL_LOOKUP_AND_TRIGGER:I = 0x1


# instance fields
.field private contactEmail:Ljava/lang/String;

.field private contactUri:Landroid/net/Uri;

.field private extras:Landroid/os/Bundle;

.field private queryHandler:Lcom/fsck/k9/ui/ContactBadge$QueryHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "lookup"

    aput-object v2, v0, v1

    sput-object v0, Lcom/fsck/k9/ui/ContactBadge;->EMAIL_LOOKUP_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/fsck/k9/ui/ContactBadge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/fsck/k9/ui/ContactBadge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fsck/k9/ui/ContactBadge;->extras:Landroid/os/Bundle;

    .line 61
    new-instance v0, Lcom/fsck/k9/ui/ContactBadge$QueryHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/fsck/k9/ui/ContactBadge$QueryHandler;-><init>(Lcom/fsck/k9/ui/ContactBadge;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/fsck/k9/ui/ContactBadge;->queryHandler:Lcom/fsck/k9/ui/ContactBadge$QueryHandler;

    .line 62
    invoke-virtual {p0, p0}, Lcom/fsck/k9/ui/ContactBadge;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    return-void
.end method

.method static synthetic access$002(Lcom/fsck/k9/ui/ContactBadge;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/ui/ContactBadge;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/fsck/k9/ui/ContactBadge;->contactUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$100(Lcom/fsck/k9/ui/ContactBadge;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/ui/ContactBadge;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/fsck/k9/ui/ContactBadge;->onContactUriChanged()V

    return-void
.end method

.method private isAssigned()Z
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/fsck/k9/ui/ContactBadge;->contactUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fsck/k9/ui/ContactBadge;->contactEmail:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onContactUriChanged()V
    .locals 1

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/fsck/k9/ui/ContactBadge;->isAssigned()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fsck/k9/ui/ContactBadge;->setEnabled(Z)V

    .line 135
    return-void
.end method


# virtual methods
.method public assignContactFromEmail(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "emailAddress"    # Ljava/lang/String;
    .param p2, "lazyLookup"    # Z

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/fsck/k9/ui/ContactBadge;->assignContactFromEmail(Ljava/lang/String;ZLandroid/os/Bundle;)V

    .line 101
    return-void
.end method

.method public assignContactFromEmail(Ljava/lang/String;ZLandroid/os/Bundle;)V
    .locals 8
    .param p1, "emailAddress"    # Ljava/lang/String;
    .param p2, "lazyLookup"    # Z
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 121
    iput-object p1, p0, Lcom/fsck/k9/ui/ContactBadge;->contactEmail:Ljava/lang/String;

    .line 122
    iput-object p3, p0, Lcom/fsck/k9/ui/ContactBadge;->extras:Landroid/os/Bundle;

    .line 123
    if-nez p2, :cond_0

    .line 124
    iget-object v0, p0, Lcom/fsck/k9/ui/ContactBadge;->queryHandler:Lcom/fsck/k9/ui/ContactBadge$QueryHandler;

    const/4 v1, 0x0

    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/fsck/k9/ui/ContactBadge;->contactEmail:Ljava/lang/String;

    .line 125
    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/fsck/k9/ui/ContactBadge;->EMAIL_LOOKUP_PROJECTION:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    .line 124
    invoke-virtual/range {v0 .. v7}, Lcom/fsck/k9/ui/ContactBadge$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :goto_0
    return-void

    .line 128
    :cond_0
    iput-object v2, p0, Lcom/fsck/k9/ui/ContactBadge;->contactUri:Landroid/net/Uri;

    .line 129
    invoke-direct {p0}, Lcom/fsck/k9/ui/ContactBadge;->onContactUriChanged()V

    goto :goto_0
.end method

.method public assignContactUri(Landroid/net/Uri;)V
    .locals 1
    .param p1, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/fsck/k9/ui/ContactBadge;->contactUri:Landroid/net/Uri;

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fsck/k9/ui/ContactBadge;->contactEmail:Ljava/lang/String;

    .line 85
    invoke-direct {p0}, Lcom/fsck/k9/ui/ContactBadge;->onContactUriChanged()V

    .line 86
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 142
    iget-object v0, p0, Lcom/fsck/k9/ui/ContactBadge;->extras:Landroid/os/Bundle;

    if-nez v0, :cond_1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 143
    .local v2, "extras":Landroid/os/Bundle;
    :goto_0
    iget-object v0, p0, Lcom/fsck/k9/ui/ContactBadge;->contactUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    .line 144
    invoke-virtual {p0}, Lcom/fsck/k9/ui/ContactBadge;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/ui/ContactBadge;->contactUri:Landroid/net/Uri;

    const/4 v3, 0x3

    invoke-static {v0, p0, v1, v3, v5}, Landroid/provider/ContactsContract$QuickContact;->showQuickContact(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;I[Ljava/lang/String;)V

    .line 152
    :cond_0
    :goto_1
    return-void

    .line 142
    .end local v2    # "extras":Landroid/os/Bundle;
    :cond_1
    iget-object v2, p0, Lcom/fsck/k9/ui/ContactBadge;->extras:Landroid/os/Bundle;

    goto :goto_0

    .line 146
    .restart local v2    # "extras":Landroid/os/Bundle;
    :cond_2
    iget-object v0, p0, Lcom/fsck/k9/ui/ContactBadge;->contactEmail:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 147
    const-string v0, "uri_content"

    iget-object v1, p0, Lcom/fsck/k9/ui/ContactBadge;->contactEmail:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/fsck/k9/ui/ContactBadge;->queryHandler:Lcom/fsck/k9/ui/ContactBadge$QueryHandler;

    const/4 v1, 0x1

    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/fsck/k9/ui/ContactBadge;->contactEmail:Ljava/lang/String;

    .line 149
    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/fsck/k9/ui/ContactBadge;->EMAIL_LOOKUP_PROJECTION:[Ljava/lang/String;

    move-object v6, v5

    move-object v7, v5

    .line 148
    invoke-virtual/range {v0 .. v7}, Lcom/fsck/k9/ui/ContactBadge$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 156
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 157
    const-class v0, Lcom/fsck/k9/ui/ContactBadge;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 158
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 162
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 163
    const-class v0, Lcom/fsck/k9/ui/ContactBadge;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 164
    return-void
.end method
