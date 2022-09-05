<?php
/**
 * @file
 * Digital Polygon Standard profile code.
 */

use Drupal\shortcut\Entity\Shortcut;
use Drupal\user\Entity\User;

/**
 * Implements hook_install_tasks().
 */
function digitalpolygon_standard_install_tasks(array &$install_state) {
  $tasks['digitalpolygon_standard_user_one_admin'] = [];
  $tasks['digitalpolygon_standard_setup_shortcuts'] = [];
  return $tasks;
}

/**
 * Give user 1 the administrator role.
 *
 * @return void
 * @throws \Drupal\Core\Entity\EntityStorageException
 */
function digitalpolygon_standard_user_one_admin() {
  // Assign user 1 the "administrator" role.
  /** @var \Drupal\user\Entity\User $user */
  $user = User::load(1);
  $user->addRole('administrator');
  $user->save();
}

/**
 * Create shortcuts for adding and viewing content.
 *
 * @return void
 * @throws \Drupal\Core\Entity\EntityStorageException
 */
function digitalpolygon_standard_setup_shortcuts() {
  // Populate the default shortcut set.
  $shortcut = Shortcut::create([
    'shortcut_set' => 'default',
    'title' => t('Add content'),
    'weight' => -20,
    'link' => ['uri' => 'internal:/node/add'],
  ]);
  $shortcut->save();

  $shortcut = Shortcut::create([
    'shortcut_set' => 'default',
    'title' => t('All content'),
    'weight' => -19,
    'link' => ['uri' => 'internal:/admin/content'],
  ]);
  $shortcut->save();
}
