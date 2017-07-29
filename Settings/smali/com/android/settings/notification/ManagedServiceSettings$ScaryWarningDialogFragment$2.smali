.class Lcom/android/settings_ex/notification/ManagedServiceSettings$ScaryWarningDialogFragment$2;
.super Ljava/lang/Object;
.source "ManagedServiceSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic aiP:Landroid/content/ComponentName;

.field final synthetic aiW:Lcom/android/settings_ex/notification/ManagedServiceSettings$ScaryWarningDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/notification/ManagedServiceSettings$ScaryWarningDialogFragment;Landroid/content/ComponentName;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/settings_ex/notification/ManagedServiceSettings$ScaryWarningDialogFragment$2;->aiW:Lcom/android/settings_ex/notification/ManagedServiceSettings$ScaryWarningDialogFragment;

    iput-object p2, p0, Lcom/android/settings_ex/notification/ManagedServiceSettings$ScaryWarningDialogFragment$2;->aiP:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/settings_ex/notification/ManagedServiceSettings$ScaryWarningDialogFragment$2;->aiW:Lcom/android/settings_ex/notification/ManagedServiceSettings$ScaryWarningDialogFragment;

    iget-object v0, v0, Lcom/android/settings_ex/notification/ManagedServiceSettings$ScaryWarningDialogFragment;->aiO:Lcom/android/settings_ex/notification/ManagedServiceSettings;

    invoke-static {v0}, Lcom/android/settings_ex/notification/ManagedServiceSettings;->b(Lcom/android/settings_ex/notification/ManagedServiceSettings;)Lcom/android/settings_ex/notification/ServiceListing;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/notification/ManagedServiceSettings$ScaryWarningDialogFragment$2;->aiP:Landroid/content/ComponentName;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/notification/ServiceListing;->a(Landroid/content/ComponentName;Z)V

    .line 177
    return-void
.end method
