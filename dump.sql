SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


CREATE TABLE `Accounts` (
  `id` int(11) NOT NULL,
  `login` text,
  `password` text,
  `rang` int(11) DEFAULT NULL,
  `email` text,
  `date` int(11) NOT NULL,
  `lock` int(11) NOT NULL,
  `notify` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `Accounts` (`id`, `login`, `password`, `rang`, `email`, `date`, `lock`, `notify`) VALUES
(1, 'admin', '098f794ffea8716d93976b9a298fd3fb', 1, '', 0, 0, 1);

CREATE TABLE `accounts_setting` (
  `id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `profile_tg` text NOT NULL,
  `bot_token` text NOT NULL,
  `bot_username` text NOT NULL,
  `channel_id_update` text NOT NULL,
  `last_time` text NOT NULL,
  `restart` int(11) NOT NULL,
  `duplicat_dis_glob` int(11) NOT NULL,
  `success` int(11) NOT NULL,
  `similar_text` int(11) NOT NULL,
   `update_task` int(11) NOT NULL,
   `clear_duplicatus` text NOT NULL,
   `clear_updates` text NOT NULL,
   `api_key_vk` text NOT NULL,
   `missed_post` int(11) NOT NULL,
   `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `channels_origin` (
  `id` int(11) NOT NULL,
  `channel_origin` text NOT NULL,
  `channel_origin_id` text NOT NULL,
  `origin_name` text NOT NULL,
  `channel_publish` text NOT NULL,
  `channel_publish_id` text NOT NULL,
  `publish_name` text NOT NULL,
  `status` int(11) NOT NULL,
  `all_post` int(11) NOT NULL,
  `invalid` int(11) NOT NULL,
  `album_get` int(11) NOT NULL,
  `setting_id` int(11) NOT NULL,  
  `account_id` int(11) NOT NULL,
  `noforwards` int(11) NOT NULL,
  `social` int(11) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `channels_settings` (
  `id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `spam_filter` text NOT NULL,
  `replace_words` text NOT NULL,
  `filter_links` text NOT NULL,
  `filter_message` int(11) NOT NULL,
  `enable_text_message` int(11) NOT NULL,
  `my_text_message` text NOT NULL,
  `filter_inline` int(11) NOT NULL,
  `replace_link` text NOT NULL,
  `enable_bot_vote` int(11) NOT NULL,
  `skip_text` int(11) NOT NULL,
  `timetable` int(11) NOT NULL,
  `limit_status` int(11) NOT NULL,
  `time_post` text NOT NULL,
  `limit_post` int(11) NOT NULL,
  `limit_hours` int(11) NOT NULL,
  `limit_time` int(11) NOT NULL,
  `limit_self` int(11) NOT NULL,
  `forward_message` int(11) NOT NULL,
  `ignore_post_type` int(11) NOT NULL,
  `sugn_channel` text NOT NULL,
  `word_send_post` text NOT NULL,
  `word_send_post_func` int(11) NOT NULL,
  `word_send_post_type` int(11) NOT NULL,
  `replace_username_stat` int(11) NOT NULL,
  `replace_username` text NOT NULL,
  `update_message` int(11) NOT NULL,
  `delete_message` int(11) NOT NULL,
  `reply_post` int(11) NOT NULL,
  `length_message_limit` int(11) NOT NULL,
  `length_message` int(11) NOT NULL,
  `type_check_m` int(11) NOT NULL,
  `schedule` text NOT NULL,
  `schedule_date` text NOT NULL,
  `send_text_no_media` int(11) NOT NULL,
  `post_no_webpage` int(11) NOT NULL,
  `ignore_album` int(11) NOT NULL,
  `ignore_audio` int(11) NOT NULL,
  `duplicat_dis` int(11) NOT NULL,
  `del_empty_line` int(11) NOT NULL,
  `rename_files_func` int(11) NOT NULL,
  `word_rename_files` text NOT NULL,
  `arm_link` int(11) NOT NULL,
  `arm_links_data` text NOT NULL,
   `round_msg` int(11) NOT NULL,
   `sing_image` int(11) NOT NULL,
   `sing_image_png` text NOT NULL,
   `pinned_message` int(11) NOT NULL,
   `hash_tags` int(11) NOT NULL,
   `entities` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `duplicatus_post` (
  `id` int(11) NOT NULL,
  `setting_id` int(11) NOT NULL,
  `hash` text NOT NULL,
  `msg` text NOT NULL,
  `date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `join_exists` (
  `id` int(11) NOT NULL,
  `channel_url` text NOT NULL,
  `name` text NOT NULL,
  `channel_id` text NOT NULL,
  `profile_tg` text NOT NULL,
  `id_account` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `ready` int(11) NOT NULL,
  `pm` int(11) NOT NULL,
  `social` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `self_account_id` int(11) NOT NULL,
  `account_add_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `setting` (`id`, `status`, `self_account_id`) VALUES
(1, 1, 0);

CREATE TABLE `update_messages` (
  `id` int(11) NOT NULL,
  `message_id1` int(11) NOT NULL,
  `message_id2` int(11) NOT NULL,
  `channel_id_from` text NOT NULL,
  `channel_id_to` text NOT NULL,
  `account_id` int(11) NOT NULL,
  `date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `vote_channels` (
  `id` int(11) NOT NULL,
  `channel_id` text NOT NULL,
  `message` text NOT NULL,
  `message_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `plus` int(11) NOT NULL,
  `minus` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `vote_channels_exits` (
  `id` int(11) NOT NULL,
  `id_chat` int(11) NOT NULL,
  `type` text NOT NULL,
  `id_post` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `add_accounts` (
  `id` int(11) NOT NULL,
  `phone` text NOT NULL,
  `code` text NOT NULL,
  `2fa` text NOT NULL,
  `date` text NOT NULL,
  `status` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `group_list` text NOT NULL,
  `use` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `error` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


ALTER TABLE `add_accounts`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `add_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

ALTER TABLE `Accounts`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `accounts_setting`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `channels_origin`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `channels_settings`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `duplicatus_post`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `join_exists`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `update_messages`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `vote_channels`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `vote_channels_exits`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `accounts_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `channels_origin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `channels_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `duplicatus_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=204;

ALTER TABLE `join_exists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `update_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `vote_channels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `vote_channels_exits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
